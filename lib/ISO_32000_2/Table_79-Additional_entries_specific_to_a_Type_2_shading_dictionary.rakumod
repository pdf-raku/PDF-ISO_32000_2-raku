use v6;
role ISO_32000_2::Table_79-Additional_entries_specific_to_a_Type_2_shading_dictionary {
    method Coords {...};
    method Domain {...};
    method Function {...};
    method Extend {...};
}

=begin pod

=head1 Description

Table 79 — Additional entries specific to a Type 2 shading dictionary

=head1 Methods (Entries)

=head2 Coords [array]
- (Required) An array of four numbers [x0 y0 x1 y1] specifying the starting and ending coordinates of the axis, expressed in the shading’s target coordinate space. If the starting and ending coordinates are coincident (x0=x1 and y0=y1) nothing is painted.

=head2 Domain [array]
- (Optional) An array of two numbers [t0 t1] specifying the limiting values of a parametric variable t. The variable is considered to vary linearly between these two values as the colour gradient varies between the starting and ending points of the axis. The variable t becomes the input argument to the colour function(s). Default value: [0.0 1.0].

=head2 Function [function or array]
- (Required) A 1-in, n-out function or an array of n 1-in, 1-out functions (where n is the number of colour components in the shading dictionary’s colour space). The function(s) is called with values of the parametric variable t in the domain defined by the Domain entry. Each function’s domain is a superset of that of the shading dictionary. If the value returned by the function for a given colour component is out of range, it is adjusted to the nearest valid value.

=head2 Extend [array]
- (Optional) An array of two boolean values specifying whether to extend the shading beyond the starting and ending points of the axis, respectively. Default value: [false false].

=end pod
