use v6;
role ISO_32000_2::Table_341-Entries_in_a_RichMediaContent_dictionary {
    method Type {...};
    method Assets {...};
    method Configurations {...};
    method Views {...};
}

=begin pod

=head1 Description

Table 341 — Entries in a RichMediaContent dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, it is RichMediaContent.

=head2 Assets [name tree]
- (Optional; PDF 2.0) A name tree of embedded file specification dictionaries as detailed in 7.11.3, "File specification dictionaries".

=head2 Configurations [array]
- (Optional; PDF 2.0) An array where each element is an indirect object reference to a RichMediaConfiguration dictionary.

=head2 Views [array]
- (Optional; PDF 2.0) An array where each element is an indirect object reference to a 3D view dictionary. See "Table 315 — Entries in a 3D view dictionary" for the details of the entries of this dictionary.
Default value: If no views are specified, default values is used for the components of a view dictionary, including rendering/lighting modes, background colour, and camera data.

=end pod
