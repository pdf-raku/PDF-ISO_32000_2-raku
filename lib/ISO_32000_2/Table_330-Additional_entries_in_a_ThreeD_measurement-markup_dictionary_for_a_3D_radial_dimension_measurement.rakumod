use v6;
role ISO_32000_2::Table_330-Additional_entries_in_a_ThreeD_measurement-markup_dictionary_for_a_3D_radial_dimension_measurement {
    method AP {...};
    method A1 {...};
    method A2 {...};
    method N2 {...};
    method A3 {...};
    method A4 {...};
    method TP {...};
    method TX {...};
    method TY {...};
    method EL {...};
    method TS {...};
    method C {...};
    method V {...};
    method U {...};
    method P {...};
    method UT {...};
    method SC {...};
    method R {...};
    method S {...};
}

=begin pod

=head1 Description

Table 330 — Additional entries in a 3D measurement/markup dictionary for a 3D radial dimension measurement

=head1 Methods (Entries)

=head2 AP [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the 3D annotation plane on which the measurement markup lies.

=head2 A1 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the model space position of the first anchor point, called the circle centre point, in world space.
NOTE 1 It is assumed that this is a position on the 3D model associated with this view.

=head2 A2 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the model space position of the second anchor point, which is a point on the arc, in world space.
NOTE 2 It is assumed that this is a position on the 3D model associated with this view.

=head2 N2 [text string]
- (Optional; PDF 2.0) The name of the part (or model tree node) associated with anchor point 2 (A2). The part name is used to verify that the part exists and is visible. If not, the measurement is not displayed. If omitted, no validation occurs.

=head2 A3 [array]
- (Required for arcs only; PDF 2.0) A three-element array of numbers that defines the start of the arc being measured. This entry is required if the geometry being measured is an arc. See "Figure 113 — Defining a radial dimension for an arc" for a visual representation of A3.

=head2 A4 [array]
- (Required for arcs only; PDF 2.0) A three-element array of numbers that defines the end of the arc being measured. This entry is required if the geometry being measured is an arc. See "Figure 113 — Defining a radial dimension for an arc" for a visual representation of A4.

=head2 TP [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the text anchor point for the measurement value string.

=head2 TX [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the horizontal direction vector for the text string presenting the measurement value string.

=head2 TY [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the up direction vector for the text string presenting the measurement value string.

=head2 EL [number]
- (Optional; PDF 2.0) The length of the extension line in points. The default is 60 points.

=head2 TS [number]
- (Optional; PDF 2.0) A number representing the measurement text string height defined in points in the default user space. The measurement text is zoom invariant.
The default is 12 points.

=head2 C [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing the DeviceRGB colour of the measurement markup.
The default value is the array [1 1 1], representing the colour white.

=head2 V [number]
- (Required; PDF 2.0) A numeric value representing a measurement value. This value is converted to a text string and displayed as part of the measurement text string.

=head2 U [text string]
- (Required; PDF 2.0) A string representing the units for the measurement.

=head2 P [integer]
- (Optional; PDF 2.0) The number of decimal digits, which represents the precision, shown for the measurement value (V).
The default is 3, if P is not specified.

=head2 UT [text string]
- (Optional; PDF 2.0) A string defined by the user that is appended to the end of measurement value string. If omitted, no string is appended.

=head2 SC [boolean]
- (Optional; PDF 2.0) A flag that indicates whether the underlying circle, or arc, is shown or not. If true, the underlying circle associated with a radial dimension is displayed. The circle or arc is redrawn in the markup colour (C).
The default is false, not to show the circle.

=head2 R [boolean]
- (Optional; PDF 2.0) A flag that indicates whether the measurement value is for a radius or a diameter. If true, the measurement value associated with a radial measurement represents a radius, as opposed to a diameter value.
The default is true, the measurement value represents a radius.

=head2 S [dictionary]
- (Optional; PDF 2.0) A comment reference is an indirect reference to a projection annotation that may be associated with this 3D measurement. See 13.6.7.4, "3D measurements and projection annotations".

=end pod
