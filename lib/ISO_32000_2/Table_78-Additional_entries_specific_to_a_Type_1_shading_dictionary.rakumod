use v6;
role ISO_32000_2::Table_78-Additional_entries_specific_to_a_Type_1_shading_dictionary {
    method Domain {...};
    method Matrix {...};
    method Function {...};
}

=begin pod

=head1 Description

Table 78 — Additional entries specific to a Type 1 shading dictionary

=head1 Methods (Entries)

=head2 Domain [array]
- (Optional) An array of four numbers [xmin xmax ymin ymax] specifying the rectangular domain of coordinates over which the colour function(s) are defined. Default value: [0 1 0 1].

=head2 Matrix [array]
- (Optional) An array of six numbers specifying a transformation matrix mapping the coordinate space specified by the Domain entry into the shading’s target coordinate space.
NOTE To map the domain rectangle [0 1 0 1] to a 1-inch square with lower-left corner at coordinates (100, 100) in default user space, the Matrix value would be [72 0 0 72 100 100].
Default value: the identity matrix [1 0 0 1 0 0].

=head2 Function [function or array]
- (Required) A 2-in, n-out function or an array of n 2-in, 1-out functions (where n is the number of colour components in the shading dictionary’s colour space). Each function’s domain is a superset of that of the shading dictionary. If the value returned by the function for a given colour component is out of range, it is adjusted to the nearest valid value.

=end pod
