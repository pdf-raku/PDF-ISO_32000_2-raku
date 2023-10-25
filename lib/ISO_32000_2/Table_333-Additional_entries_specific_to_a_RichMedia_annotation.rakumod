use v6;
role ISO_32000_2::Table_333-Additional_entries_specific_to_a_RichMedia_annotation {
    method Subtype {...};
    method RichMediaContent {...};
    method RichMediaSettings {...};
}

=begin pod

=head1 Description

Table 333 — Additional entries specific to a RichMedia annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required; PDF 2.0) The type of annotation that the dictionary describes. The name is RichMedia for a rich media annotation.

=head2 RichMediaContent [dictionary]
- (Required; PDF 2.0) A RichMediaContent dictionary that stores the rich media artwork and information as to how it is configured and viewed. See "Table 341 — Entries in a RichMediaContent dictionary".

=head2 RichMediaSettings [dictionary]
- (Optional; PDF 2.0) A RichMediaSettings dictionary that stores conditions and responses that determine when the annotation is activated and deactivated by an interactive PDF processor and the initial state of artwork in those states. See "Table 334 — Entries in a RichMediaSettings dictionary".
Default value: If no RichMediaSettings dictionary is present, the first configuration is loaded.

=end pod
