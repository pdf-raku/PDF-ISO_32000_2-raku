use v6;
role ISO_32000_2::Table_331-Additional_entries_in_a_ThreeD_measurement-markup_dictionary_for_a_3D_comment_note {
    method A1 {...};
    method N1 {...};
    method TP {...};
    method TB {...};
    method TS {...};
    method C {...};
    method UT {...};
    method S {...};
}

=begin pod

=head1 Description

Table 331 — Additional entries in a 3D measurement/markup dictionary for a 3D comment note

=head1 Methods (Entries)

=head2 A1 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the model space position of the first anchor point in world space.
NOTE It is assumed that this is a position on the 3D model associated with this view.

=head2 N1 [text string]
- (Optional; PDF 2.0) The name of the part (or model tree node) associated with anchor point 1 (A1). The part name is used to verify that the part exists and is visible. If not, the measurement is not displayed. If omitted, no validation occurs.

=head2 TP [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the text anchor point for the measurement value string.

=head2 TB [array]
- (Optional; PDF 2.0) A two-element integer array defining the x and y size of the text box to contain the user text string (UT). The x value is defined as a number of characters shown in the x direction (the top row); the y value is the number of rows of text. The interactive PDF processor is free to flow the text in the text box as appropriate. If the entire string does not fit, it may be truncated. The interactive PDF processor may also choose any font in which to render the content, though a monospaced font is recommended.

=head2 TS [number]
- (Optional; PDF 2.0) The text size – a number representing the measurement text string height defined in points in the default user space. The measurement text is zoom invariant.
Default value: 12.

=head2 C [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing the DeviceRGB colour of the measurement markup.
The default value is the array [1 1 1], representing the colour white.

=head2 UT [text string]
- (Optional; PDF 2.0) The text string displayed as the contents of the 3D comment note.

=head2 S [dictionary]
- (Optional; PDF 2.0) A comment reference is an indirect reference to a projection annotation that may be associated with this 3D measurement. See "Table 341 — Entries in a RichMediaContent dictionary".

=end pod
