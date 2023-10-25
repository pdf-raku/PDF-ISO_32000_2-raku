use v6;
role ISO_32000_2::Table_181-Additional_entries_specific_to_a_polygon_or_polyline_annotation {
    method Subtype {...};
    method Vertices {...};
    method LE {...};
    method BS {...};
    method IC {...};
    method BE {...};
    method IT {...};
    method Measure {...};
    method Path {...};
}

=begin pod

=head1 Description

Table 181 — Additional entries specific to a polygon or polyline annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Polygon or PolyLine for a polygon or polyline annotation, respectively.

=head2 Vertices [array]
- (Required unless a Path key is present, in which case it is ignored) An array of numbers specifying the alternating horizontal and vertical coordinates, respectively, of each vertex, in default user space.

=head2 LE [array]
- (Optional; meaningful only for polyline annotations) An array of two names that specifies the line ending styles. The first and second elements of the array specifies the line ending styles for the endpoints defined, respectively, by the first and last pairs of coordinates in the Vertices array. "Table 179 — Line ending styles" shows the allowed values. Default value: [/None /None].

=head2 BS [dictionary]
- (Optional) A border style dictionary (see "Table 168 — Entries in a border style dictionary") specifying the width and dash pattern that is used in drawing the line.

=head2 IC [array]
- (Optional) An array of numbers that is in the range 0.0 to 1.0 and specifies the interior color with which to fill the annotation’s line endings (see "Table 179 — Line ending styles"). The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1 DeviceGray
3 DeviceRGB
4 DeviceCMYK
For Polyline annotations, the value of the IC key is used to fill only the line ending. However, for Polygon annotations, the value of the IC key is used to fill the entire shape, much as the F operator would fill a shape in a content stream.

=head2 BE [dictionary]
- (Optional; meaningful only for polygon annotations) A border effect dictionary that describes an effect applied to the border described by the BS entry (see "Table 169 — Entries in a border effect dictionary").

=head2 IT [name]
- (Optional; PDF 1.6) A name that describes the intent of the polygon or polyline annotation (see also "Table 172 — Additional entries in an annotation dictionary specific to markup annotations"). The following values is valid:
PolygonCloud The annotation is intended to function as a cloud object.
PolyLineDimension (PDF 1.7) The polyline annotation is intended to function as a dimension.
PolygonDimension (PDF 1.7) The polygon annotation is intended to function as a dimension.

=head2 Measure [dictionary]
- (Optional; PDF 1.7) A measure dictionary (see "Table 266 — Entries in a measure dictionary") that specifies the scale and units that apply to the annotation.

=head2 Path [array]
- (Optional; PDF 2.0) An array of n arrays, each supplying the operands for a path building operator (m, l or c).
If this key is present the Vertices key is not present.
Each of the n arrays contains pairs of values specifying the points (x and y values) for a path drawing operation.
The first array is of length 2 and specifies the operand of a moveto operator which establishes a current point.
Subsequent arrays of length 2 specify the operands of lineto operators. Arrays of length 6 specify the operands for curveto operators.
Each array is processed in sequence to construct the path.
The current graphics state shall control the path width, dash pattern, etc.

=end pod
