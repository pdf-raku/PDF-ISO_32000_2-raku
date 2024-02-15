use Test;
plan 10;
use PDF::ISO_32000_2;

my %table = PDF::ISO_32000_2.table: "Table_349-Entries_in_the_document_information_dictionary";
is %table<caption>, "Table 349 — Entries in the document information dictionary", "table caption";
is-deeply %table<head>, $["Key", "Type", "Value"], "table head";
is +%table<rows>, 9, "row count";
is +%table<rows>[0], 3, "column count";
is-deeply %table<rows>[0], $["Title", "text string", "(Optional; PDF 1.1; deprecated in PDF 2.0) The document’s title.\nNOTE 1 The dc:title entry in the document’s metadata stream can be used to represent the document’s title."], "first row";

my @index = PDF::ISO_32000_2.table-index;
is @index[349], 'Table_349-Entries_in_the_document_information_dictionary', '.table-index()';

my $stream-ops = PDF::ISO_32000_2.appendix<A.1>;
is $stream-ops, 'misc/Table_A1-PDF_content_stream_operators', "Appendix lookup";
is PDF::ISO_32000_2.table($stream-ops)<caption>, "Table A.1 — PDF content stream operators", "Appendix load";

%table = PDF::ISO_32000_2.[29];
is %table<caption>, "Table 29 — Entries in the catalog dictionary", "table -AT-POS lookup";

%table = PDF::ISO_32000_2<Table_29-Entries_in_the_catalog_dictionary>;
is %table<caption>, "Table 29 — Entries in the catalog dictionary", "table -AT-POS lookup";
