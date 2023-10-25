use v6;
role ISO_32000_2::Table_81-Additional_entries_specific_to_a_Type_4_shading_dictionary {
    method BitsPerCoordinate {...};
    method BitsPerComponent {...};
    method BitsPerFlag {...};
    method Decode {...};
    method Function {...};
}

=begin pod

=head1 Description

Table 81 — Additional entries specific to a Type 4 shading dictionary

=head1 Methods (Entries)

=head2 BitsPerCoordinate [integer]
- (Required) The number of bits used to represent each vertex coordinate. The value is 1, 2, 4, 8, 12, 16, 24, or 32.

=head2 BitsPerComponent [integer]
- (Required) The number of bits used to represent each colour component. The value is 1, 2, 4, 8, 12, or 16.

=head2 BitsPerFlag [integer]
- (Required) The number of bits used to represent the edge flag for each vertex (see below). The value is 2, 4, or 8, but only the least significant 2 bits in each flag value is used. The value for the edge flag is 0, 1, or 2.

=head2 Decode [array]
- (Required) An array of numbers specifying how to map vertex coordinates and colour components into the appropriate ranges of values. The decoding method is similar to that used in image dictionaries (see 8.9.5.2, "Decode arrays"). The ranges is specified as follows:
[xmin xmax ymin ymax c1,min c1,max… cn,min cn,max]
Only one pair of c values is specified if a Function entry is present.

=head2 Function [function or array]
- (Optional) A 1-in, n-out function or an array of n 1-in, 1-out functions (where n is the number of colour components in the shading dictionary’s colour space). If this entry is present, the colour data for each vertex is specified by a single parametric variable rather than by n separate colour components. The designated function(s) is called with each interpolated value of the parametric variable to determine the actual colour at each point. Each input value is forced into the range interval specified for the corresponding colour component in the shading dictionary’s Decode array. Each function’s domain is a superset of that interval. If the value returned by the function for a given colour component is out of range, it is adjusted to the nearest valid value.
This entry is not used with an Indexed colour space.

=end pod
