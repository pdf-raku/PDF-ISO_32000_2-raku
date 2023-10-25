use v6;
role ISO_32000_2::Table_353-Entries_in_the_mark_information_dictionary {
    method Marked {...};
    method UserProperties {...};
    method Suspects {...};
}

=begin pod

=head1 Description

Table 353 — Entries in the mark information dictionary

=head1 Methods (Entries)

=head2 Marked [boolean]
- (Optional) A flag indicating whether the document conforms to tagged PDF conventions (see 14.8, "Tagged PDF"). Default value: false.
If Suspects is true, the document may not completely conform to tagged PDF conventions.

=head2 UserProperties [boolean]
- (Optional; PDF 1.6) A flag indicating the presence of structure elements that contain user properties attributes (see 14.7.6.4, "User properties"). Default value: false.

=head2 Suspects [boolean]
- (Optional; PDF 1.6; deprecated in PDF 2.0) A flag indicating the presence of tag suspects. Default value: false.

=end pod
