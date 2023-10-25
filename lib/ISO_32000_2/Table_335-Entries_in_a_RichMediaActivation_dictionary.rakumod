use v6;
role ISO_32000_2::Table_335-Entries_in_a_RichMediaActivation_dictionary {
    method Type {...};
    method Condition {...};
    method Animation {...};
    method View {...};
    method Configuration {...};
    method Presentation {...};
}

=begin pod

=head1 Description

Table 335 — Entries in a RichMediaActivation dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, is RichMediaActivation.

=head2 Condition [name]
- (Optional; PDF 2.0) A name that specifies the circumstances under which the annotation is activated. The following values are valid:
XA the annotation is explicitly activated by a user action or script.
PO the annotation is activated as soon as the page that contains the annotation receives focus as the current page.
PV the annotation is activated as soon as any part of the page that contains the annotation becomes visible.
NOTE One example is in a multiple-page presentation. Only one page is the current page although several are visible.
Default value: XA.

=head2 Animation [dictionary]
- (Optional; PDF 2.0) A RichMediaAnimation dictionary (see "Table 337 — Entries in a RichMediaAnimation dictionary") that describes the preferred method that interactive PDF processor uses to drive keyframe animations present in this artwork.

=head2 View [dictionary]
- (Optional; PDF 2.0) An indirect object reference to a 3D view dictionary (see "Table 315 — Entries in a 3D view dictionary" that is also referenced by the Views array within the annotation’s RichMediaContent dictionary (see "Table 341 — Entries in a RichMediaContent dictionary").
Default value: The first element in the Views array of the annotation specified in the RichMediaContent dictionary. If a Views array does not exist, default values for the components of a 3D view dictionary (see "Table 344 — Additional entries in a 3D view dictionary") are used.

=head2 Configuration [dictionary]
- (Optional; PDF 2.0) An indirect object reference to a RichMediaConfiguration dictionary (see "Table 342 — Entries in a RichMediaConfiguration dictionary") that is also referenced by the Configurations array in the RichMediaContent dictionary (see "Table 341 — Entries in a RichMediaContent dictionary").
Default value: The first element within the Configurations array specified in the RichMediaContent dictionary.

=head2 Presentation [dictionary]
- (Optional; PDF 2.0) A RichMediaPresentation dictionary (see "Table 338 — Entries in a RichMediaPresentation dictionary") that contains information as to how the annotation and user interface elements will be visually laid out and drawn.

=end pod
