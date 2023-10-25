use v6;
role ISO_32000_2::Table_47-Entries_in_a_collection_subitem_dictionary {
    method Type {...};
    method D {...};
    method P {...};
}

=begin pod

=head1 Description

Table 47 — Entries in a collection subitem dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is CollectionSubitem for a collection item dictionary.

=head2 D [text string, date, or number]
- (Optional) The data corresponding to the related entry in the collection field dictionary (see "Table 155 — Entries in a collection field dictionary"). The type of data matches the data type identified by the corresponding collection field dictionary. Default: none.

=head2 P [text string]
- (Optional) A prefix string that is concatenated with the text string presented to the user. This entry is ignored when an interactive PDF processor sorts the items in the collection. Default: none.

=end pod
