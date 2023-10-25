use v6;
role ISO_32000_2::Table_178-Additional_entries_specific_to_a_line_annotation {
    method Subtype {...};
    method L {...};
    method BS {...};
    method LE {...};
    method IC {...};
    method LL {...};
    method LLE {...};
    method Cap {...};
    method IT {...};
    method LLO {...};
    method CP {...};
    method Measure {...};
    method CO {...};
}

=begin pod

=head1 Description

Table 178 — Additional entries specific to a line annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Line for a line annotation.

=head2 L [array]
- (Required) An array of four numbers, [x1 y1 x2 y2], specifying the starting and ending coordinates of the line in default user space.
If the LL entry is present, this value represents the endpoints of the leader lines rather than the endpoints of the line itself; see "Figure 80 — Leader lines".

=head2 BS [dictionary]
- (Optional) A border style dictionary (see "Table 168 — Entries in a border style dictionary") specifying the width and dash pattern that is used in drawing the line.

=head2 LE [array]
- (Optional; PDF 1.4) An array of two names specifying the line ending styles that is used in drawing the line. The first and second elements of the array specifies the line ending styles for the endpoints defined, respectively, by the first and second pairs of coordinates, (x1, y1) and (x2, y2), in the L array. "Table 179 — Line ending styles" shows the permitted values. Default value: [ /None /None ].

=head2 IC [array]
- (Optional; PDF 1.4) An array of numbers in the range 0.0 to 1.0 specifying the interior colour that is used to fill the annotation’s line endings (see "Table 179 — Line ending styles"). The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1 DeviceGray
3 DeviceRGB
4 DeviceCMYK

=head2 LL [number]
- (Required if LLE is present, otherwise optional; PDF 1.6) The length of leader lines in default user space that extend from each endpoint of the line perpendicular to the line itself, as shown in "Figure 80 — Leader lines". A positive value means that the leader lines appear in the direction that is clockwise when traversing the line from its starting point to its ending point (as specified by L); a negative value indicates the opposite direction.
Default value: 0 (no leader lines).

=head2 LLE [number]
- (Optional; PDF 1.6) A non-negative number that shall represents the length of leader line extensions that extend from the line proper 180 degrees from the leader lines, as shown in "Figure 80 — Leader lines".
Default value: 0 (no leader line extensions).

=head2 Cap [boolean]
- (Optional; PDF 1.6) If true, the text specified by the Contents or RC entries is replicated as a caption in the appearance of the line, as shown in "Figure 81 — Lines with captions appearing as part of the line" and "Figure 82 — Line with a caption appearing as part of the offset". The text is rendered in a manner appropriate to the content, taking into account factors such as writing direction.
Default value: false.

=head2 IT [name]
- (Optional; PDF 1.6) A name describing the intent of the line annotation (see also "Table 172 — Additional entries in an annotation dictionary specific to markup annotations"). Valid values is LineArrow, which means that the annotation is intended to function as an arrow, and LineDimension, which means that the annotation is intended to function as a dimension line.

=head2 LLO [number]
- (Optional; PDF 1.7) A non-negative number that represents the length of the leader line offset, which is the amount of empty space between the endpoints of the annotation and the beginning of the leader lines.

=head2 CP [name]
- (Optional; meaningful only if Cap is true; PDF 1.7) A name describing the annotation’s caption positioning. Valid values are Inline, meaning the caption is centred inside the line, and Top, meaning the caption is on top of the line.
Default value: Inline

=head2 Measure [dictionary]
- (Optional; PDF 1.7) A measure dictionary (see "Table 266 — Entries in a measure dictionary") that specifies the scale and units that apply to the line annotation.

=head2 CO [array]
- (Optional; meaningful only if Cap is true; PDF 1.7) An array of two numbers that specifies the offset of the caption text from its normal position. The first value is the horizontal offset along the annotation line from its midpoint, with a positive value indicating offset to the right and a negative value indicating offset to the left. The second value is the vertical offset perpendicular to the annotation line, with a positive value indicating a shift up and a negative value indicating a shift down.
Default value: [0, 0] (no offset from normal positioning)

=end pod
