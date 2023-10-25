use v6;
role ISO_32000_2::Table_129-Additional_entries_specific_to_a_Type_6_halftone_dictionary {
    method Type {...};
    method HalftoneType {...};
    method HalftoneName {...};
    method Width {...};
    method Height {...};
    method TransferFunction {...};
}

=begin pod

=head1 Description

Table 129 — Additional entries specific to a Type 6 halftone dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Halftone for a halftone dictionary.

=head2 HalftoneType [integer]
- (Required) A code identifying the halftone type that this dictionary describes; is 6 for this type of halftone.

=head2 HalftoneName [byte string]
- (Optional) The name of the halftone dictionary.

=head2 Width [integer]
- (Required) The width of the threshold array, in device pixels.

=head2 Height [integer]
- (Required) The height of the threshold array, in device pixels.

=head2 TransferFunction [function or name]
- (Optional) A transfer function, which overrides the current transfer function in the graphics state for the same component. The name Identity may be used to specify the identity function (see 10.5, "Transfer functions").
NOTE PDF versions to 1.7 required that this entry be present if the dictionary is a component of a Type 5 halftone (see 10.6.5.6, "Type 5 halftones") and represents either a non-primary or non-standard primary colour component.

=end pod
