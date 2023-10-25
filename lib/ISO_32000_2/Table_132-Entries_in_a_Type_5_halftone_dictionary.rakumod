use v6;
role ISO_32000_2::Table_132-Entries_in_a_Type_5_halftone_dictionary {
    method Type {...};
    method HalftoneType {...};
    method HalftoneName {...};
    method Default {...};
}

=begin pod

=head1 Description

Table 132 — Entries in a Type 5 halftone dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Halftone for a halftone dictionary.

=head2 HalftoneType [integer]
- (Required) A code identifying the halftone type that this dictionary describes; is 5 for this type of halftone.

=head2 HalftoneName [byte string]
- (Optional) The name of the halftone dictionary.

=head2 Default [dictionary or stream]
- (Required) A halftone that is used for any colourant or colour component that does not have an entry of its own. The value is not 5. If there are any nonprimary colourants, the default halftone has a transfer function.

=end pod
