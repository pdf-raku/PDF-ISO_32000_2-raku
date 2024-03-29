use v6;
role ISO_32000_2::Table_338-Entries_in_a_RichMediaPresentation_dictionary {
    method Type {...};
    method Style {...};
    method Window {...};
    method Transparent {...};
    method NavigationPane {...};
    method Toolbar {...};
    method PassContextClick {...};
}

=begin pod

=head1 Description

Table 338 — Entries in a RichMediaPresentation dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, is RichMediaPresentation.

=head2 Style [name]
- (Optional; PDF 2.0) The style of presentation of the rich media. The value can be Embedded or Windowed. A interactive PDF processor shall support the state Embedded.
Default value: Embedded

=head2 Window [dictionary]
- (Optional; PDF 2.0) A RichMediaWindow Dictionary that describes the size and position of the floating user interface window when the value for Style is set to Windowed. See "Table 339 — Entries in a RichMediaWindow dictionary" for a detailed description.

=head2 Transparent [boolean]
- (Optional; PDF 2.0) A flag that indicates whether the page content is displayed through the transparent areas of the rich media content (where the alpha value is less than 1.0). If true, the rich media artwork is composited over the page content using an alpha channel. If false, the rich media artwork is drawn over an opaque background prior to composition over the page content.
Default value: false

=head2 NavigationPane [boolean]
- (Optional; PDF 2.0) A flag that indicates the default behavior of a navigation pane user interface element. If true, the navigation pane is visible when the content is initially activated. If false, the navigation pane does not displayed by default.
Default value: false

=head2 Toolbar [boolean]
- (Optional; PDF 2.0) A flag that indicates the default behavior of an interactive toolbar associated with this annotation. If true, a toolbar is displayed when the annotation is activated and given focus. If false, a toolbar does not displayed by default.
The toolbar is positioned in proximity to the annotation.
Default value: true for content of Subtype 3D, and false otherwise.

=head2 PassContextClick [boolean]
- (Optional; PDF 2.0) A flag that indicates whether a contextual click on the rich media annotation is passed to the media player run time or is handled natively by the interactive PDF processor.
NOTE A context click is usually generated by a mouse right-click although it can be invoked by other means. This can include, but is not limited to, an explicit context-menu keyboard key or the combination of a mouse click and a keyboard modifier key.
If false, the interactive PDF processor shall handle the context click. If true, the interactive PDF processor shall allow the media runtime to provide any user interface it wishes.
Default value: false

=end pod
