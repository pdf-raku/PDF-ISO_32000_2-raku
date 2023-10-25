use v6;
role ISO_32000_2::Table_57-Entries_in_a_graphics_state_parameter_dictionary {
    method Type {...};
    method LW {...};
    method LC {...};
    method LJ {...};
    method ML {...};
    method D {...};
    method RI {...};
    method OP {...};
    method op {...};
    method OPM {...};
    method Font {...};
    method BG {...};
    method BG2 {...};
    method UCR {...};
    method UCR2 {...};
    method TR {...};
    method TR2 {...};
    method HT {...};
    method FL {...};
    method SM {...};
    method SA {...};
    method BM {...};
    method SMask {...};
    method CA {...};
    method ca {...};
    method AIS {...};
    method TK {...};
    method UseBlackPtComp {...};
    method HTO {...};
}

=begin pod

=head1 Description

Table 57 — Entries in a graphics state parameter dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; is ExtGState for a graphics state parameter dictionary.

=head2 LW [number]
- (Optional; PDF 1.3) The line width (see 8.4.3.2, "Line width").

=head2 LC [integer]
- (Optional; PDF 1.3) The line cap style (see 8.4.3.3, "Line cap style").

=head2 LJ [integer]
- (Optional; PDF 1.3) The line join style (see 8.4.3.4, "Line join style").

=head2 ML [number]
- (Optional; PDF 1.3) The miter limit (see 8.4.3.5, "Miter limit").

=head2 D [array]
- (Optional; PDF 1.3) The line dash pattern, expressed as an array of the form [dashArray dashPhase], where dashArray is itself an array and dashPhase is a number (see 8.4.3.6, "Line dash pattern").

=head2 RI [name]
- (Optional; PDF 1.3) The name of the rendering intent (see 8.6.5.8, "Rendering intents").

=head2 OP [boolean]
- (Optional) A flag specifying whether to apply overprint (see 8.6.7, "Overprint control"). In PDF 1.2 and earlier, there is a single overprint parameter that applies to all painting operations. Beginning with PDF 1.3, two separate overprint parameters were defined: one for stroking and one for all other painting operations. Specifying an OP entry sets both parameters unless there is also an op entry in the same graphics state parameter dictionary, in which case the OP entry sets only the overprint parameter for stroking.

=head2 op [boolean]
- (Optional; PDF 1.3) A flag specifying whether to apply overprint (see 8.6.7, "Overprint control") for painting operations other than stroking. If this entry is absent, the OP entry, if any, shall also set this parameter.

=head2 OPM [integer]
- (Optional; PDF 1.3) The overprint mode (see 8.6.7, "Overprint control").

=head2 Font [array]
- (Optional; PDF 1.3) An array of the form [font size], where font is an indirect reference to a font dictionary and size is a number expressed in text space units. These two objects correspond to the operands of the Tf operator (see 9.3, "Text state parameters and operators"); however, the first operand is an indirect object reference instead of a resource name.

=head2 BG [function]
- (Optional) The black-generation function, which maps the interval [0.0 1.0] to the interval [0.0 1.0] (see 10.4.2.4, "Conversion from DeviceRGB to DeviceCMYK").

=head2 BG2 [function or name]
- (Optional; PDF 1.3) Same as BG except that the value may also be the name Default, denoting the black-generation function that was in effect at the start of the page. If both BG and BG2 are present in the same graphics state parameter dictionary, BG2 takes precedence.

=head2 UCR [function]
- (Optional) The undercolour-removal function, which maps the interval [0.0 1.0] to the interval [−1.0 1.0] (see 10.4.2.4, "Conversion from DeviceRGB to DeviceCMYK").

=head2 UCR2 [function or name]
- (Optional; PDF 1.3) Same as UCR except that the value may also be the name Default, denoting the undercolour-removal function that was in effect at the start of the page. If both UCR and UCR2 are present in the same graphics state parameter dictionary, UCR2 takes precedence.

=head2 TR [function, name, or array]
- (Optional, deprecated in PDF 2.0) The transfer function, which maps the interval [0.0 1.0] to the interval [0.0 1.0] (see 10.5, "Transfer functions"). The value is either a single function (which applies to all process colourants) or an array of four functions (which apply to the process colourants individually). The name Identity may be used to represent the Identity function.

=head2 TR2 [function, name, or array]
- (Optional; PDF 1.3, deprecated in PDF 2.0) Same as TR except that the value may also be the name Default, denoting the transfer function that was in effect at the start of the page. If both TR and TR2 are present in the same graphics state parameter dictionary, TR2 takes precedence.

=head2 HT [dictionary, stream, or name]
- (Optional) The halftone dictionary or stream (see 10.6, "Halftones") or the name Default, denoting the halftone that was in effect at the start of the page.

=head2 FL [number]
- (Optional; PDF 1.3) The flatness tolerance (see 10.7.2, "Flatness tolerance").

=head2 SM [number]
- (Optional; PDF 1.3) The smoothness tolerance (see 10.7.3, "Smoothness tolerance").

=head2 SA [boolean]
- (Optional) A flag specifying whether to apply automatic stroke adjustment (see 10.7.5, "Automatic stroke adjustment").

=head2 BM [name or array
(array is deprecated in PDF 2.0)]
- (Optional; PDF 1.4; array is deprecated in PDF 2.0) The current blend mode that is used in the transparent imaging model (see 11.3.5, "Blend mode").

=head2 SMask [dictionary or name]
- (Optional; PDF 1.4) The current soft mask, specifying the mask shape or mask opacity values that is used in the transparent imaging model (see 11.3.7.2, "Source shape and opacity" and 11.6.4.3, "Mask shape and opacity").
Although the current soft mask is sometimes referred to as a "soft clip", altering it with the gs operator completely replaces the old value with the new one, rather than intersecting the two as is done with the current clipping path parameter (see 8.5.4, "Clipping path operators").

=head2 CA [number]
- (Optional; PDF 1.4) The current stroking alpha constant, specifying the constant shape or constant opacity value that is used for stroking operations in the transparent imaging model (see 11.3.7.2, "Source shape and opacity" and 11.6.4.4, "Constant shape and opacity").

=head2 ca [number]
- (Optional; PDF 1.4) Same as CA, but for nonstroking operations.

=head2 AIS [boolean]
- (Optional; PDF 1.4) The alpha source flag ("alpha is shape"), specifying whether the current soft mask and alpha constant is interpreted as shape values (true) or opacity values (false). This flag also governs the interpretation of the SMask entry, if any, in an image dictionary (see 8.9.5, "Image dictionaries").

=head2 TK [boolean]
- (Optional; PDF 1.4) The text knockout flag, determines the behaviour of overlapping glyphs within a text object in the transparent imaging model (see 9.3.8, "Text knockout"). This flag controls the behavior of glyphs obtained from any font type, including Type 3.

=head2 UseBlackPtComp [name]
- (Optional; PDF 2.0) This graphics state parameter controls whether black point compensation is performed while doing CIE-based colour conversions. It is set to either OFF, ON or Default. The semantics of Default are up to the PDF processor. See 8.6.5.9, "Use of black point compensation".
The default value is: Default.

=head2 HTO [array]
- (Optional; PDF 2.0) Halftone origin, specified as an array of two numbers specifying the X and Y location of the halftone origin in the current coordinate system.
Although the numbers are specified in the current coordinate system, changes to the current coordinate system (for example as a result of invocation of a form XObject) do not move the halftone origin relative to the underlying device coordinate system.
NOTE: The HTO key is very similar to the HTP key defined in PDF versions up to PDF 1.3 (1st Edition), but differs in the coordinate system used.

=end pod
