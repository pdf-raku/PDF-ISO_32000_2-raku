use v6;
role ISO_32000_2::Table_379-Additional_standard_layout_attributes_specific_to_block-level_structure_elements {
    method SpaceBefore {...};
    method SpaceAfter {...};
    method StartIndent {...};
    method EndIndent {...};
    method TextIndent {...};
    method TextAlign {...};
    method BBox {...};
    method Width {...};
    method Height {...};
    method BlockAlign {...};
    method InlineAlign {...};
    method TBorderStyle {...};
    method TPadding {...};
}

=begin pod

=head1 Description

Table 379 — Additional standard layout attributes specific to block-level structure elements

=head1 Methods (Entries)

=head2 SpaceBefore [number]
- (Optional; not inheritable) The amount of extra space preceding the before edge of the BLSE, measured in default user space units in the block-progression direction. This value is added to any adjustments induced by the LineHeight attributes of ILSEs within the first line of the BLSE (see 14.8.5.4.4, "Layout Attributes for ILSEs"). If the preceding BLSE has a SpaceAfter attribute, the greater of the two attribute values is used.
Default value: 0.
This attribute is disregarded for the first BLSE placed in a given reference area.

=head2 SpaceAfter [number]
- (Optional; not inheritable) The amount of extra space following the after edge of the BLSE, measured in default user space units in the block-progression direction. This value is added to any adjustments induced by the LineHeight attributes of ILSEs within the last line of the BLSE (see 14.8.5.4, "Layout Attributes"). If the following BLSE has a SpaceBefore attribute, the greater of the two attribute values is used.
Default value: 0.
This attribute is disregarded for the last BLSE placed in a given reference area.

=head2 StartIndent [number]
- (Optional; inheritable) The distance from the start edge of the reference area to that of the BLSE, measured in default user space units in the inline-progression direction. This attribute applies only to structure elements with a Placement attribute of Block or Start (see 14.8.5.4.2, "General Layout Attributes"). The attribute is disregarded for elements with other Placement values.
Default value: 0.
A negative value for this attribute places the start edge of the BLSE outside that of the reference area. The results are implementation-dependent and may not be supported by all conforming products that process tagged PDF or by particular export formats.
If a structure element with a StartIndent attribute is placed adjacent to a floating element with a Placement attribute of Start, the actual value used for the element’s starting indent is its own StartIndent attribute or the inline extent of the adjacent floating element, whichever is greater. This value may be further adjusted by the element’s TextIndent attribute, if any.

=head2 EndIndent [number]
- (Optional; inheritable) The distance from the end edge of the BLSE to that of the reference area, measured in default user space units in the inline-progression direction. This attribute applies only to structure elements with a Placement attribute of Block or End (see 14.8.5.4.2, "General Layout Attributes"). The attribute is disregarded for elements with other Placement values.
Default value: 0.
A negative value for this attribute places the end edge of the BLSE outside that of the reference area. The results are implementation-dependent and may not be supported by all conforming products that process tagged PDF or by particular export formats.
If a structure element with an EndIndent attribute is placed adjacent to a floating element with a Placement attribute of End, the actual value used for the element’s ending indent is its own EndIndent attribute or the inline extent of the adjacent floating element, whichever is greater.

=head2 TextIndent [number]
- (Optional; inheritable; applies only to some BLSEs) The additional distance, measured in default user space units in the inline-progression direction, from the start edge of the BLSE, as specified by StartIndent, to that of the first line of text. A negative value indicates a hanging indent.
Default value: 0.
This attribute applies only to paragraphlike BLSEs and those of structure types LI (List item), TH (Table header), and TD (Table data), provided that they contain content other than nested BLSEs.

=head2 TextAlign [name]
- (Optional; inheritable; applies only to BLSEs containing text) The alignment, in the inline-progression direction, of text and other content within lines of the BLSE. Valid values are:
Start Aligned with the start edge.
Center Centred between the start and end edges.
End Aligned with the end edge.
Justify Aligned with both the start and end edges, with internal spacing within each line expanded, if necessary, to achieve such alignment. The last (or only) line is aligned with the start edge only.
Default value: Start.

=head2 BBox [rectangle]
- (Optional; not inheritable) An array of four numbers in default user space units that shall give the coordinates of the left, bottom, right, and top edges, respectively, of the structure element’s bounding box (the rectangle that completely encloses its visible content).
The BBox attribute is present for structure elements whose content does not lend itself to reflow or any other visual rearrangement of the content inside it.
NOTE 1 Examples of types of structure elements that do not lend themselves to reflow include Figure and Formula structure elements.
NOTE 2 The semantics of the visual presentation of charts, illustrations consisting of more than one graphics object, or formulas can suffer if the objects inside them are rearranged, as is typical for content reflow.
A structure element with a BBox attribute may contain other structure elements inside it.
NOTE 3 A formula, for example, can lose its meaning if the parts in the formula are visually rearranged. At the same time, the parts inside the formula could be individually tagged, for example with inline level structure elements.
EXAMPLE Formulas, graphic art, vector drawings, images are types of structure elements for which a BBox attribute is appropriate.

=head2 Width [number or name]
- (Optional; not inheritable; illustrations, tables, and table cells only; is used for table cells; sometimes required for Figure, Form or Formula elements with Placement attribute) The width of the element’s content rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles"), measured in default user space units in the inline-progression direction. This attribute applies only to elements of structure type Figure, Formula, Table, TH (Table header), or TD (Table data).
The name Auto in place of a numeric value indicates that no specific width constraint is to be imposed; the element’s width is determined by the intrinsic width of its content.
Default value: Auto.

=head2 Height [number or name]
- (Optional; not inheritable; illustrations, tables, table headers, and table cells only; sometimes required for Figure, Form or Formula elements with Placement attribute) The height of the element’s content rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles"), measured in default user space units in the block-progression direction. This attribute applies only to elements of structure type Figure, Formula, Table, TH (Table header), or TD (Table data).
The name Auto in place of a numeric value indicates that no specific height constraint is to be imposed; the element’s height is determined by the intrinsic height of its content.
Default value: Auto.

=head2 BlockAlign [name]
- (Optional; inheritable; table cells only) The alignment, in the block-progression direction, of content within the table cell. Valid values are:
Before Before edge of the first child’s allocation rectangle aligned with that of the table cell’s content rectangle.
Middle Children centred within the table cell. The distance between the before edge of the first child’s allocation rectangle and that of the table cell’s content rectangle is the same as the distance between the after edge of the last child’s allocation rectangle and that of the table cell’s content rectangle.
After After edge of the last child’s allocation rectangle aligned with that of the table cell’s content rectangle.
Justify Children aligned with both the before and after edges of the table cell’s content rectangle. The first child is placed as described for Before and the last child as described for After, with equal spacing between the children. If there is only one child, it is aligned with the before edge only, as for Before.
This attribute applies only to elements of structure type TH (Table header) or TD (Table data) and shall control the placement of all BLSEs that are children of the given element. The table cell’s content rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles") shall become the reference area for all of its descendants.
Default value: Before.

=head2 InlineAlign [name]
- (Optional; inheritable; table cells only) The alignment, in the inline-progression direction, of content within the table cell. Valid values are:
Start Start edge of each child’s allocation rectangle aligned with that of the table cell’s content rectangle.
Center Each child centred within the table cell. The distance between the start edges of the child’s allocation rectangle and the table cell’s content rectangle is the same as the distance between their end edges.
End End edge of each child’s allocation rectangle aligned with that of the table cell’s content rectangle.
This attribute applies only to elements of structure type TH (Table header) or TD (Table data) and controls the placement of all ILSEs that are children of the given element. The table cell’s content rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles") shall become the reference area for all of its descendants.
Default value: Start.

=head2 TBorderStyle [name or array]
- (Optional; inheritable; PDF 1.5) The style of the border drawn on each edge of a table cell. Allowed values is the same as those specified for BorderStyle (see "Table 379 — Additional standard layout attributes specific to block-level structure elements"). If both TBorderStyle and BorderStyle apply to a given table cell, BorderStyle shall supersede TBorderStyle.
Default value: None.

=head2 TPadding [integer or array]
- (Optional; inheritable; PDF 1.5) Specifies an offset to account for the separation between the table cell’s content rectangle and the surrounding border (see 14.8.5.4.5, "Content and Allocation Rectangles"). If both TPadding and Padding apply to a given table cell, Padding shall supersede TPadding. A positive value shall enlarge the background area; a negative value shall trim it, and the border may overlap the element’s text or graphic. The value is either a single number representing the width of the padding, in default user space units, that applies to all four edges of the table cell, or a 4-entry array representing the padding width for the before edge, after edge, start edge, and end edge, respectively, of the content rectangle.
Default value: 0.

=end pod
