use v6;
role ISO_32000_2::Table_48-Entries_in_an_extensions_dictionary {
    method Type {...};
    method PrefixName {...};
}

=begin pod

=head1 Description

Table 48 — Entries in an extensions dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; , is a direct objectif present) The type of PDF object that this dictionary describes; if present, is Extensions.

=head2 PrefixName [array or dictionary]
- (Required; PDF 1.7; is a direct object) A developer extensions dictionary, or an array of developer extension dictionaries (PDF 2.0), denoting extensions used (See "Table 49 — Entries in a developer extensions dictionary"). The key is a registered prefix name as described in Annex E, “Extending PDF".
This entry is repeated for each different developer’s extensions used. Multiple distinct registered prefix names for different developers may be used for each different developer’s extensions used. See Example 3 below.
NOTE Arrays of developer extension dictionaries were introduced in this document (2020).

=end pod
