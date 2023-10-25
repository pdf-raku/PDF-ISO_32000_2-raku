use v6;
role ISO_32000_2::Table_51-Device-independent_graphics_state_parameters {
    method CTM {...};
    method clippingPath {...};
    method colorSpace {...};
    method color {...};
    method textState {...};
    method lineWidth {...};
    method lineCap {...};
    method lineJoin {...};
    method miterLimit {...};
    method dashPattern {...};
    method renderingIntent {...};
    method strokeAdjustment {...};
    method blendMode {...};
    method softMask {...};
    method alphaConstant {...};
    method alphaSource {...};
    method blackPointCompensation {...};
}

=begin pod

=head1 Description

Table 51 — Device-independent graphics state parameters

=head1 Methods (Entries)

=head2 CTM [array]
- The current transformation matrix, which maps positions from user coordinates to device coordinates (see 8.3, "Coordinate systems"). This matrix is modified by each application of the coordinate transformation operator, cm. Initial value: a matrix that transforms default user coordinates to device coordinates.

=head2 clippingPath [(internal)]
- The current clipping path, which defines the boundary against which all output is cropped (see 8.5.4, "Clipping path operators"). Initial value: the size of the MediaBox.

=head2 colorSpace [name or array]
- The current colour space in which colour values is interpreted (see 8.6, "Colour spaces"). There are two separate colour space parameters: one for stroking and one for all other painting operations. Initial value: DeviceGray.

=head2 color [(various)]
- The current colour that is used during painting operations (see 8.6, "Colour spaces"). The type and interpretation of this parameter depend on the current colour space; for most colour spaces, a colour value consists of one to four numbers. There are two separate colour parameters: one for stroking and one for all other painting operations. Initial value: black.

=head2 textState [(various)]
- A set of nine graphics state parameters that pertain only to the painting of text. These include parameters that select the font, scale the glyphs to an appropriate size, and accomplish other effects. The text state parameters are described in 9.3, "Text state parameters and operators".

=head2 lineWidth [number]
- The thickness, in user space units, of paths to be stroked (see 8.4.3.2, "Line width"). Initial value: 1.0.

=head2 lineCap [integer]
- A code specifying the shape of the start and endcaps for an open stroked path or the caps at both ends of dashes in a stroked path (see 8.4.3.3, "Line cap style"). Initial value: 0, for butt caps.

=head2 lineJoin [integer]
- A code specifying the shape of joints between connected segments of a stroked path ("see 8.4.3.4, "Line join style"). Initial value: 0, for mitered joins.

=head2 miterLimit [number]
- The miter limit imposes a maximum on the ratio of the miter length to the line width. When the limit is exceeded, the join is converted from a miter to a bevel (see 8.4.3.5, "Miter limit"). This parameter limits the length of "spikes" produced when line segments join at sharp angles. Initial value: 10.0, for a miter cutoff below approximately 11.5 degrees.

=head2 dashPattern [array and number]
- A description of the dash pattern that is used when paths are stroked (see 8.4.3.6, "Line dash pattern"). Initial value: [] 0, a solid line.

=head2 renderingIntent [name]
- The rendering intent that is used when converting CIE-based colours to device colours (see 8.6.5.8, "Rendering intents"). Initial value: RelativeColorimetric.

=head2 strokeAdjustment [boolean]
- (PDF 1.2) A flag specifying whether to compensate for possible rasterization effects when stroking a path with a line width that is small relative to the pixel resolution of the output device (see 10.7.5, "Automatic stroke adjustment").
NOTE This is considered a device-independent parameter, even though the details of its effects are device-dependent.
Initial value: false.

=head2 blendMode [name or array
(array is deprecated in PDF 2.0)]
- (PDF 1.4, array is deprecated in PDF 2.0) The current blend mode that is used in the transparent imaging model (see 11.3.5, "Blend mode"). A PDF reader shall implicitly reset this parameter to its initial value at the beginning of execution of a transparency group XObject (see 11.6.6, "Transparency group XObjects").
The value is either a name object, designating one of the standard blend modes listed in "Table 134 — Standard separable blend modes" and "Table 135 — Standard non-separable blend modes" in 11.3.5, "Blend mode", or an array of such names. In the latter case, the PDF reader uses the first blend mode in the array that it recognises (or Normal if it recognises none of them).
Initial value: Normal.

=head2 softMask [dictionary or name]
- (PDF 1.4) A soft-mask dictionary (see 11.6.5.1, "Soft-mask dictionaries") specifying the mask shape or mask opacity values that is used in the transparent imaging model (see 11.3.7.2, "Source shape and opacity" and 11.6.4.3, "Mask shape and opacity"), or the name None if no such mask is specified. A PDF reader shall implicitly reset this parameter to its initial value at the beginning of execution of a transparency group XObject (see 11.6.6, "Transparency group XObjects"). Initial value: None.

=head2 alphaConstant [number]
- (PDF 1.4) The constant shape or constant opacity value that is used in the transparent imaging model (see 11.3.7.2, "Source shape and opacity" and 11.6.4.4, "Constant shape and opacity"). There are two separate alpha constant parameters: one for stroking and one for all other painting operations. A PDF reader shall implicitly reset this parameter to its initial value at the beginning of execution of a transparency group XObject (see 11.6.6, "Transparency group XObjects"). Initial value: 1.0.

=head2 alphaSource [boolean]
- (PDF 1.4) A flag specifying whether the current soft mask and alpha constant parameters is interpreted as shape values (true) or opacity values (false). This flag also governs the interpretation of the SMask entry, if any, in an image dictionary (see 8.9.5, "Image dictionaries"). Initial value: false.

=head2 blackPointCompensation [name]
- (PDF 2.0) The black point compensation algorithm that is used when converting CIE-based colours (see 8.6.5.9, "Use of black point compensation"). Initial value: Default.

=end pod
