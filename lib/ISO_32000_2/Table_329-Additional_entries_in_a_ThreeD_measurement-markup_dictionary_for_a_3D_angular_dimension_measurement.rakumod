use v6;
role ISO_32000_2::Table_329-Additional_entries_in_a_ThreeD_measurement-markup_dictionary_for_a_3D_angular_dimension_measurement {
    method AP {...};
    method A1 {...};
    method D1 {...};
    method N1 {...};
    method A2 {...};
    method D2 {...};
    method N2 {...};
    method TP {...};
    method TX {...};
    method TY {...};
    method TS {...};
    method C {...};
    method V {...};
    method P {...};
    method UT {...};
    method DR {...};
    method S {...};
}

=begin pod

=head1 Description

Table 329 — Additional entries in a 3D measurement/markup dictionary for a 3D angular dimension measurement

=head1 Methods (Entries)

=head2 AP [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the 3D annotation plane on which the measurement markup lies.

=head2 A1 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the model space position of the first anchor point in world space.
NOTE 1 It is assumed that this is a position on the 3D model associated with this view.

=head2 D1 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the direction vector for the leader line associated with the first anchor point (A1).

=head2 N1 [text string]
- (Optional; PDF 2.0) The name of the part (or model tree node) associated with anchor point 1 (A1). The part name is used to verify that the part exists and is visible. If not, the measurement is not displayed. If omitted, no validation occurs.

=head2 A2 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the model space position of the second anchor point in world space.
NOTE 2 It is assumed that this is a position on the 3D model associated with this view.

=head2 D2 [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the direction vector for the leader line associated with the second anchor point (A2).

=head2 N2 [text string]
- (Optional; PDF 2.0) The name of the part (or model tree node) associated with anchor point 2 (A2). The part name is used to verify that the part exists and is visible. If not, the measurement is not displayed. If omitted, no validation occurs.

=head2 TP [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the text anchor point for the measurement value string.

=head2 TX [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the horizontal direction vector for the text string presenting the measurement value string.

=head2 TY [array]
- (Required; PDF 2.0) A three-element array of numbers specifying the up direction vector, called the text Y direction, for the text string presenting the measurement value string.

=head2 TS [number]
- (Optional; PDF 2.0) A number representing the measurement text string height defined in points in the default user space. The measurement text is zoom invariant.
The default is 12 points.

=head2 C [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing the DeviceRGB colour of the measurement markup.
The default value is the array [1 1 1], representing the colour white.

=head2 V [number]
- (Required; PDF 2.0) A numeric value representing a measurement value. This value is converted to a text string and displayed as part of the measurement text string.

=head2 P [integer]
- (Optional; PDF 2.0) The number of decimal digits, which represents the precision, shown for the measurement value (V).
The default is 3, if P is not specified.

=head2 UT [text string]
- (Optional; PDF 2.0) A text string defined by the user that is appended to the end of measurement value string. If omitted, no string is appended.

=head2 DR [boolean]
- (Optional; PDF 2.0) A flag that indicates whether degrees or radians are shown in angular measurements. If DR is true, angular measurements are shown in degrees.
The default is true.

=head2 S [dictionary]
- (Optional; PDF 2.0) A comment reference is an indirect reference to a projection annotation that may be associated with this 3D measurement. See 13.6.7.4, "3D measurements and projection annotations".

=end pod
