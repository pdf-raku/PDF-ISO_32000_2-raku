unit class PDF::ISO_32000_2:ver<0.0.3>;

use JSON::Fast;
use Method::Also;

# run-time introspection of PDF specification content

method resources { %?RESOURCES }
my Hash %table;

method table($name) is also<AT-KEY> {
    %table{$name} //= from-json($.resources{'ISO_32000_2/' ~ $name ~ '.json'}.slurp)<table>;
}

method table-index {
    (state $ //= from-json($.resources{'ISO_32000_2-index.json'}.slurp)).list;
}

multi method appendix {
    $.table-index[0];
}

method AT-POS(UInt() $idx) {
    self.AT-KEY: self.table-index[$idx];
}
