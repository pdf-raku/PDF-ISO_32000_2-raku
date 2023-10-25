use v6;
role ISO_32000_2::Table_342-Entries_in_a_RichMediaConfiguration_dictionary {
    method Type {...};
    method Subtype {...};
    method Name {...};
    method Instances {...};
}

=begin pod

=head1 Description

Table 342 — Entries in a RichMediaConfiguration dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, it is RichMediaConfiguration.

=head2 Subtype [name]
- (Optional; PDF 2.0) A name specifying the primary content type for the configuration. Valid values are 3D, Sound, and Video.
Default value: If no value is specified, the run time shall determines the scene type by referring to the type of asset file specified by the first element in the Instances array.

=head2 Name [text string]
- (Optional; PDF 2.0) A unique name for the configuration.

=head2 Instances [array]
- (Optional; PDF 2.0) An array of indirect object references to RichMediaInstance dictionaries. (See "Table 343 — Entries in a RichMediaInstance dictionary".)

=end pod
