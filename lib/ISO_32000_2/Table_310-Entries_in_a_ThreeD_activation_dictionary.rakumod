use v6;
role ISO_32000_2::Table_310-Entries_in_a_ThreeD_activation_dictionary {
    method A {...};
    method AIS {...};
    method D {...};
    method DIS {...};
    method TB {...};
    method NP {...};
    method Style {...};
    method Window {...};
    method Transparent {...};
}

=begin pod

=head1 Description

Table 310 — Entries in a 3D activation dictionary

=head1 Methods (Entries)

=head2 A [name]
- (Optional) A name specifying the circumstances under which the annotation is activated. Valid values are:
PO The annotation is activated as soon as the page containing the annotation is opened.
PV The annotation is activated as soon as any part of the page containing the annotation becomes visible.
XA The annotation remains inactive until explicitly activated by a script or user action.
At any one time, only a single page is considered open in an interactive PDF processor, even though more than one page might be visible, depending on the page layout.
Default value: XA.
For performance reasons, documents intended for viewing in a web browser uses explicit activation (XA). In non-interactive applications, such as printing systems or aggregating interactive PDF processors, PO and PV indicate that the annotation is activated when the page is printed or placed; XA indicates that the annotation never be activated and the normal appearance is used.

=head2 AIS [name]
- (Optional) A name specifying the state of the artwork instance upon activation of the annotation. Valid values are:
I The artwork is instantiated, but real-time script-driven animations is disabled.
L Real-time script-driven animations is enabled if present; if not, the artwork is instantiated.
Default value: L.
In non-interactive PDF processors, the artwork is instantiated and scripts is disabled.

=head2 D [name]
- (Optional) A name specifying the circumstances under which the annotation is deactivated. Valid values are:
PC The annotation is deactivated as soon as the page is closed.
PI The annotation is deactivated as soon as the page containing the annotation becomes invisible.
XD The annotation remains active until explicitly deactivated by a script or user action.
At any one time, only a single page is considered open in an interactive PDF processor, even though more than one page might be visible, depending on the page layout.
Default value: PI.

=head2 DIS [name]
- (Optional) A name specifying the state of the artwork instance upon deactivation of the annotation. Valid values are:
U uninstantiated
I instantiated
L live
Default value: U.
NOTE 1 If the value of this entry is L, uninstantiation of instantiated artwork is necessary unless it has been modified. Uninstantiation is never required in non-interactive PDF processors.

=head2 TB [boolean]
- (Optional; PDF 1.7) A flag indicating the default behavior of an interactive toolbar associated with this annotation. If true, a toolbar is displayed by default when the annotation is activated and given focus. If false, a toolbar is not displayed by default.
NOTE 2 Typically, a toolbar is positioned in proximity to the 3D annotation.
Default value: true

=head2 NP [boolean]
- (Optional; PDF 1.7) A flag indicating the default behavior of the user interface for viewing or managing information about the 3D artwork. Such user interfaces can enable navigation to different views or can depict the hierarchy of the objects in the artwork (the model tree). If true, the user interface is made visible when the annotation is activated. If false, the user interface is not made visible by default.
Default value: false

=head2 Style [name]
- (Optional; PDF 2.0) The value is either Embedded or Windowed. An interactive PDF processor shall support both Embedded and Windowed.
Default value: Embedded

=head2 Window [dictionary]
- (Optional; PDF 2.0) A RichMediaWindow Dictionary that describes the size and position of the floating user interface window when the value for Style is set to Windowed. See "Table 339 — Entries in a RichMediaWindow dictionary" for a detailed description.

=head2 Transparent [boolean]
- (Optional; PDF 2.0) A flag that indicates whether the interactive PDF processor displays the underlying page content through the transparent areas of the rich media content (where the alpha value is less than 1.0).
Default value: false

=end pod
