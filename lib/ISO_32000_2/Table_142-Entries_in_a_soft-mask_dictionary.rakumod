use v6;
role ISO_32000_2::Table_142-Entries_in_a_soft-mask_dictionary {
    method Type {...};
    method S {...};
    method G {...};
    method BC {...};
    method TR {...};
}

=begin pod

=head1 Description

Table 142 — Entries in a soft-mask dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Mask for a soft-mask dictionary.

=head2 S [name]
- (Required) A subtype specifying the method that is used in deriving the mask values from the transparency group specified by the G entry:
Alpha The group’s computed alpha is used, disregarding its colour (see 11.5.2, "Deriving a soft mask from group alpha").
Luminosity The group’s computed colour is converted to a single-component luminosity value (see 11.5.3, "Deriving a soft mask from group luminosity").

=head2 G [stream]
- (Required) A transparency group XObject (see 11.6.6, "Transparency group XObjects") that is used as the source of alpha or colour values for deriving the mask. If the subtype S is Luminosity, the group attributes dictionary contains a CS entry defining the colour space in which the compositing computation is to be performed.

=head2 BC [array]
- (Optional) An array of component values specifying the colour that is used as the backdrop against which to composite the transparency group XObject G. This entry is consulted only if the subtype S is Luminosity. The array consists of n numbers, where n is the number of components in the colour space specified by the CS entry in the group attributes dictionary (see 11.6.6, "Transparency group XObjects"). Default value: the colour space’s initial value, representing black.

=head2 TR [function or name]
- (Optional) A function object (see 7.10, "Functions") specifying the transfer function that is used in deriving the mask values. The function accepts one input, the computed group alpha or luminosity (depending on the value of the subtype S), and shall return one output, the resulting mask value. The input is in the range 0.0 to 1.0. The computed output is in the range 0.0 to 1.0; if it falls outside this range, it is forced to the nearest valid value. The name Identity may be specified in place of a function object to designate the identity function. Default value: Identity.

=end pod
