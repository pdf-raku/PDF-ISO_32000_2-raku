use v6;
role ISO_32000_2::Table_74-Additional_entries_specific_to_a_Type_1_pattern_dictionary {
    method Type {...};
    method PatternType {...};
    method PaintType {...};
    method TilingType {...};
    method BBox {...};
    method XStep {...};
    method YStep {...};
    method Resources {...};
    method Matrix {...};
}

=begin pod

=head1 Description

Table 74 — Additional entries specific to a Type 1 pattern dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Pattern for a pattern dictionary.

=head2 PatternType [integer]
- (Required) A code identifying the type of pattern that this dictionary describes; is 1 for a tiling pattern.

=head2 PaintType [integer]
- (Required) A code that determines how the colour of the pattern cell is specified:
1 Coloured tiling pattern. The pattern’s content stream specifies the colours used to paint the pattern cell. The current colours in use when the PDF processor begins processing the content stream are the ones initially in effect in the pattern’s parent content stream. This is similar to the definition of the pattern matrix; see 8.7.2, "General properties of patterns".
2 Uncoloured tiling pattern. The pattern’s content stream does not specify any colour information. Instead, the entire pattern cell is painted with a separately specified colour each time the pattern is used. Essentially, the content stream describes a stencil through which the current nonstroking colour is poured. The content stream does not invoke operators that specify colours or other colour-related parameters in the graphics state; otherwise, the operator is ignored and processing of the stream continues without error (see 8.6.8, "Colour operators"). The content stream may paint an image mask however, since it does not specify any colour information (see 8.9.6.2, "Stencil masking").

=head2 TilingType [integer]
- (Required) A code that controls adjustments to the spacing of tiles relative to the device pixel grid:
1 Constant spacing. Pattern cells is spaced consistently — that is, by a multiple of a device pixel. To achieve this, the PDF processor may need to distort the pattern cell slightly by making small adjustments to XStep, YStep, and the transformation matrix. The amount of distortion does not exceed 1 device pixel.
2 No distortion. The pattern cell is not distorted, but the spacing between pattern cells may vary by as much as 1 device pixel, both horizontally and vertically, when the pattern is painted. This achieves the spacing requested by XStep and YStep on average but not necessarily for each individual pattern cell.
3 Constant spacing and faster tiling. Pattern cells is spaced consistently as in tiling Type 1 but with additional distortion permitted to enable a more efficient implementation.

=head2 BBox [rectangle]
- (Required) An array of four numbers in the pattern coordinate system giving the coordinates of the left, bottom, right, and top edges, respectively, of the pattern cell’s bounding box. These boundaries is used to clip the pattern cell.
NOTE 1 A BBox of zero height or width will still paint one pixel (see 10.7.4, "Scan conversion rules").

=head2 XStep [number]
- (Required) The desired horizontal spacing between pattern cells, measured in the pattern coordinate system.

=head2 YStep [number]
- (Required) The desired vertical spacing between pattern cells, measured in the pattern coordinate system.
NOTE 2 XStep and YStep can differ from the dimensions of the pattern cell implied by the BBox entry. This allows tiling with irregularly shaped figures.
XStep and YStep may be either positive or negative but is not zero.

=head2 Resources [dictionary]
- (Required) A resource dictionary that contains all of the named resources required by the pattern’s content stream (see 7.8.3, "Resource dictionaries").

=head2 Matrix [array]
- (Optional) An array of six numbers specifying the pattern matrix (see 8.7.2, "General properties of patterns"). Default value: the identity matrix [1 0 0 1 0 0].

=end pod
