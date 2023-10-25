use v6;
role ISO_32000_2::Table_378-Standard_layout_attributes_common_to_all_standard_structure_types {
    method Placement {...};
    method WritingMode {...};
    method BackgroundColor {...};
    method BorderColor {...};
    method BorderStyle {...};
    method BorderThickness {...};
    method Padding {...};
    method Color {...};
}

=begin pod

=head1 Description

Table 378 — Standard layout attributes common to all standard structure types

=head1 Methods (Entries)

=head2 Placement [name]
- (Optional; not inheritable) The positioning of the element with respect to the enclosing reference area and other content. The value is one of the following:
Block Stacked in the block-progression direction within an enclosing reference area or parent BLSE.
Inline Packed in the inline-progression direction within an enclosing BLSE.
Before Placed so that the before edge of the element’s allocation rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles") coincides with that of the nearest enclosing reference area. The element may float, if necessary, to achieve the specified placement. The element is treated as a block occupying the full extent of the enclosing reference area in the inline direction. Other content is stacked so as to begin at the after edge of the element’s allocation rectangle.
Start Placed so that the start edge of the element’s allocation rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles") coincides with that of the nearest enclosing reference area. The element may float, if necessary, to achieve the specified placement. Other content that would intrude into the element’s allocation rectangle is laid out as a runaround.
End Placed so that the end edge of the element’s allocation rectangle (see 14.8.5.4.5, "Content and Allocation Rectangles") coincides with that of the nearest enclosing reference area. The element may float, if necessary, to achieve the specified placement. Other content that would intrude into the element’s allocation rectangle is laid out as a runaround.
When applied to an ILSE, any value except Inline causes the element to be treated as a BLSE instead.
Default value: Block for BLSEs, Inline for ILSEs.
Elements with Placement values of Before, Start, or End is removed from the normal stacking or packing process and allowed to float to the specified edge of the enclosing reference area or parent BLSE. Multiple such floating elements may be positioned adjacent to one another against the specified edge of the reference area or placed serially against the edge, in the order encountered. Complex cases such as floating elements that interfere with each other or do not fit on the same page may be handled differently by different PDF processors. Tagged PDF merely identifies the elements as floating and indicates their desired placement.

=head2 WritingMode [name]
- (Optional; inheritable) Indicates the directions of layout progression inside Block Level Structure Elements (BLSEs) (inline progression) and regarding the sequence of BLSEs (block progression). WritingMode may be used as an attribute for any structure element. The value is one of the following:
LrTb Inline progression from left to right; block progression from top to bottom. This is the typical writing mode for Western writing systems.
RlTb Inline progression from right to left; block progression from top to bottom. This is the typical writing mode for Arabic and Hebrew writing systems.
TbRl Inline progression from top to bottom; block progression from right to left. This is the typical writing mode for Chinese and Japanese writing systems.
TbLr Inline progression from top to bottom; block progression from left to right. This is the typical writing mode for writing systems like classical Mongolian.
LrBt Inline progression from left to right; block progression from bottom to top. There is currently no known writing system to which this writing mode applies.
RlBt Inline progression from right to left; block progression from bottom to top. There is currently no known writing system to which this writing mode applies.
BtRl Inline progression from bottom to top; block progression from right to left. This is the typical writing mode for the Ancient Berber writing system.
BtLr Inline progression from bottom to top; block progression from left to right. This is the typical writing mode for the Batak writing system.
The specified layout directions applies to the given structure element and all of its descendants.
Default value: LrTb.
For elements that are represented in multiple columns, the writing mode defines the direction of column progression within the reference area: the inline direction determines the stacking direction for columns and the default flow order of text from column to column.
For tables, the writing mode controls the layout of rows and columns: table rows (structure type TR) is stacked in the block direction, cells within a row (structure types TH and TD) in the inline direction.
The inline-progression direction specified by the writing mode is subject to local override within the text being laid out, as described in Unicode Standard Annex 9, Unicode Bidirectional Algorithm, available from the Unicode Consortium.

=head2 BackgroundColor [array]
- (Optional; not inheritable; PDF 1.5) The colour to be used to fill the background of a table cell or any element’s content rectangle (possibly adjusted by the Padding attribute). The value is an array of three numbers in the range 0.0 to 1.0, representing the red, green, and blue values, respectively, of an RGB colour space. If this attribute is not specified, the element is treated as if its background were transparent.

=head2 BorderColor [array]
- (Optional; inheritable; PDF 1.5) The colour of the border drawn on the edges of a table cell or any element’s content rectangle (possibly adjusted by the Padding attribute). The value of each edge is an array of three numbers in the range 0.0 to 1.0, representing the red, green, and blue values, respectively, of an RGB colour space. There are two forms:
If this attribute is not specified, the border colour for this element is the current text fill colour in effect at the start of its associated content.

=head2 BorderStyle [name or array]
- (Optional; not inheritable; PDF 1.5) The style of an element’s border. Specifies the stroke pattern of each edge of a table cell or any element’s content rectangle (possibly adjusted by the Padding attribute). There are two forms:
Valid values are:
None No border. Forces the computed value of BorderThickness to be 0.
Hidden Same as None, except in terms of border conflict resolution for table elements.
Dotted The border is a series of dots.
Dashed The border is a series of short line segments.
Solid The border is a single line segment.
Double The border is two solid lines. The sum of the two lines and the space between them equals the value of BorderThickness.
Groove The border looks as though it were carved into the canvas.
Ridge The border looks as though it were coming out of the canvas (the opposite of Groove).
Inset The border makes the entire box look as though it were embedded in the canvas.
Outset The border makes the entire box look as though it were coming out of the canvas (the opposite of Inset).
Default value: None
All borders is drawn on top of the box’s background. The colour of borders drawn for values of Groove, Ridge, Inset, and Outset depends on the structure element’s BorderColor attribute and the colour of the background over which the border is being drawn.
NOTE Conforming HTML applications may interpret Dotted, Dashed, Double, Groove, Ridge, Inset, and Outset to be Solid.

=head2 BorderThickness [number or array]
- (Optional; inheritable; PDF 1.5) The thickness of the border drawn on the edges of a table cell or any element’s content rectangle (possibly adjusted by the Padding attribute). The value of each edge is a positive number in default user space units representing the border’s thickness (a value of 0 indicates that the border is not drawn). There are two forms:
Default value: 0.

=head2 Padding [number or array]
- (Optional; not inheritable; PDF 1.5) Specifies an offset to account for the separation between the element’s content rectangle and the surrounding border (see 14.8.5.4.5, "Content and Allocation Rectangles"). A positive value enlarges the background area; a negative value trims it, possibly allowing the border to overlap the element’s text or graphic.
There are two forms:
Default value: 0.

=head2 Color [array]
- (Optional; inheritable; PDF 1.5) The colour to be used for drawing text and the default value for the colour of table borders and text decorations. The value is an array of three numbers in the range 0.0 to 1.0, representing the red, green, and blue values, respectively, of an RGB colour space. If this attribute is not specified, the border colour for this element is the current text fill colour in effect at the start of its associated content.

=end pod
