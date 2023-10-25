use v6;
role ISO_32000_2::Table_180-Additional_entries_specific_to_a_square_or_circle_annotation {
    method Subtype {...};
    method BS {...};
    method IC {...};
    method BE {...};
    method RD {...};
}

=begin pod

=head1 Description

Table 180 — Additional entries specific to a square or circle annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Square or Circle for a square or circle annotation, respectively.

=head2 BS [dictionary]
- (Optional) A border style dictionary (see "Table 168 — Entries in a border style dictionary") specifying the line width and dash pattern that is used in drawing the rectangle or ellipse.

=head2 IC [array]
- (Optional; PDF 1.4) An array of numbers that is in the range 0.0 to 1.0 and specifies the interior colour with which to fill the annotation’s rectangle or ellipse. The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1 DeviceGray
3 DeviceRGB
4 DeviceCMYK

=head2 BE [dictionary]
- (Optional; PDF 1.5) A border effect dictionary describing an effect applied to the border described by the BS entry (see "Table 169 — Entries in a border effect dictionary").

=head2 RD [rectangle]
- (Optional; PDF 1.5) A set of four numbers that describes the numerical differences between two rectangles: the Rect entry of the annotation and the actual boundaries of the underlying square or circle. Such a difference may occur in situations where a border effect (described by BE) causes the size of the Rect to increase beyond that of the square or circle.
The four numbers corresponds to the differences in default user space between the left, top, right, and bottom coordinates of Rect and those of the square or circle, respectively. Each value is greater than or equal to 0. The sum of the top and bottom differences is less than the height of Rect, and the sum of the left and right differences is less than the width of Rect.

=end pod
