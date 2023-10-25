use v6;
role ISO_32000_2::Table_185-Additional_entries_specific_to_an_ink_annotation {
    method Subtype {...};
    method InkList {...};
    method BS {...};
    method Path {...};
}

=begin pod

=head1 Description

Table 185 — Additional entries specific to an ink annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Ink for an ink annotation.

=head2 InkList [array]
- (Required) An array of n arrays, each representing a stroked path. Each array is a series of alternating horizontal and vertical coordinates in default user space, specifying points along the path. When drawn, the points is connected by straight lines or curves in an implementation-dependent way.

=head2 BS [dictionary]
- (Optional) A border style dictionary (see "Table 168 — Entries in a border style dictionary") specifying the line width and dash pattern that is used in drawing the paths.

=head2 Path [array]
- (Optional; PDF 2.0) An array of n arrays, each supplying the operands for a path building operator (m, l or c).
Each of the n arrays contains pairs of values specifying the points (x and y values) for a path drawing operation.
The first array is of length 2 and specifies the operand of a moveto operator which establishes a current point.
Subsequent arrays of length 2 specify the operands of lineto operators. Arrays of length 6 specify the operands for curveto operators.
Each array is processed in sequence to construct the path.
The current graphics state shall control the path width, dash pattern, etc.

=end pod
