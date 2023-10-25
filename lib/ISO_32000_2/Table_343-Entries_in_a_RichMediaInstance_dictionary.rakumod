use v6;
role ISO_32000_2::Table_343-Entries_in_a_RichMediaInstance_dictionary {
    method Type {...};
    method Subtype {...};
    method Asset {...};
}

=begin pod

=head1 Description

Table 343 — Entries in a RichMediaInstance dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, it is RichMediaInstance.

=head2 Subtype [name]
- (Required; PDF 2.0) A name specifying the content type for the instance.
Valid values are 3D, Sound, and Video. The subtype matches the asset file type of the instance.

=head2 Asset [dictionary]
- (Required; PDF 2.0) A dictionary that is an indirect object reference to a file specification dictionary that is also referenced in the Assets name tree specified in the RichMediaContent dictionary of the annotation.

=end pod
