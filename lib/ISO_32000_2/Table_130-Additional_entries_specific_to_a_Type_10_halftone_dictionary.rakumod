use v6;
role ISO_32000_2::Table_130-Additional_entries_specific_to_a_Type_10_halftone_dictionary {
    method Type {...};
    method HalftoneType {...};
    method HalftoneName {...};
    method Xsquare {...};
    method Ysquare {...};
    method TransferFunction {...};
}

=begin pod

=head1 Description

Table 130 — Additional entries specific to a Type 10 halftone dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Halftone for a halftone dictionary.

=head2 HalftoneType [integer]
- (Required) A code identifying the halftone type that this dictionary describes; is 10 for this type of halftone.

=head2 HalftoneName [byte string]
- (Optional) The name of the halftone dictionary.

=head2 Xsquare [integer]
- (Required) The side of square X, in device pixels; see below.

=head2 Ysquare [integer]
- (Required) The side of square Y, in device pixels; see below.

=head2 TransferFunction [function or name]
- (Optional) A transfer function, which overrides the current transfer function in the graphics state for the same component. This entry is present if the dictionary is a component of a Type 5 halftone (see 10.6.5.6, "Type 5 halftones") and represents either a nonprimary or nonstandard primary colour component (see 10.5, "Transfer functions"). The name Identity may be used to specify the identity function.

=end pod
