use v6;
role ISO_32000_2::Table_193-Additional_entries_specific_to_a_watermark_annotation {
    method Subtype {...};
    method FixedPrint {...};
}

=begin pod

=head1 Description

Table 193 — Additional entries specific to a watermark annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Watermark for a watermark annotation.

=head2 FixedPrint [dictionary]
- (Optional) A fixed print dictionary (see "Table 194 — Entries in a fixed print dictionary") that specifies how this annotation is drawn relative to the dimensions of the target media. If this entry is not present, the annotation is drawn without any special consideration for the dimensions of the target media.
If the dimensions of the target media are not known at the time of drawing, drawing is done relative to the dimensions specified by the page’s MediaBox entry (see "Table 31 — Entries in a page object").

=end pod
