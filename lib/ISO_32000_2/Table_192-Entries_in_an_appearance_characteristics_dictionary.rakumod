use v6;
role ISO_32000_2::Table_192-Entries_in_an_appearance_characteristics_dictionary {
    method R {...};
    method BC {...};
    method BG {...};
    method CA {...};
    method RC {...};
    method AC {...};
    method I {...};
    method RI {...};
    method IX {...};
    method IF {...};
    method TP {...};
}

=begin pod

=head1 Description

Table 192 — Entries in an appearance characteristics dictionary

=head1 Methods (Entries)

=head2 R [integer]
- (Optional) The number of degrees by which the widget annotation is rotated counterclockwise relative to the page. The value is a multiple of 90. Default value: 0.

=head2 BC [array]
- (Optional) An array of numbers that is in the range 0.0 to 1.0 specifying the colour of the widget annotation’s border. The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1 DeviceGray
3 DeviceRGB
4 DeviceCMYK

=head2 BG [array]
- (Optional) An array of numbers that is in the range 0.0 to 1.0 specifying the colour of the widget annotation’s background. The number of array elements determines the colour space, as described for BC.

=head2 CA [text string]
- (Optional; button fields only) The widget annotation’s normal caption, which is displayed when it is not interacting with the user.
Unlike the remaining entries listed in this Table, which apply only to widget annotations associated with push-button fields (see 12.7.5.2.2, "Push-buttons"), the CA entry may be used with any type of button field, including check boxes (see 12.7.5.2.3, "Check boxes") and radio buttons (12.7.5.2.4, "Radio buttons").

=head2 RC [text string]
- (Optional; push-button fields only) The widget annotation’s rollover caption, which is displayed when the user rolls the cursor into its active area without pressing the mouse button.

=head2 AC [text string]
- (Optional; push-button fields only) The widget annotation’s alternate (down) caption, which is displayed when the mouse button is pressed within its active area.

=head2 I [stream]
- (Optional; push-button fields only; is an indirect reference) A form XObject defining the widget annotation’s normal icon, which is displayed when it is not interacting with the user.

=head2 RI [stream]
- (Optional; push-button fields only; is an indirect reference) A form XObject defining the widget annotation’s rollover icon, which is displayed when the user rolls the cursor into its active area without pressing the mouse button.

=head2 IX [stream]
- (Optional; push-button fields only; is an indirect reference) A form XObject defining the widget annotation’s alternate (down) icon, which is displayed when the mouse button is pressed within its active area.

=head2 IF [dictionary]
- (Optional; push-button fields only) An icon fit dictionary (see "Table 250 — Entries in an icon fit dictionary") specifying how the widget annotation’s icon is displayed within its annotation rectangle. If present, the icon fit dictionary applies to all of the annotation’s icons (normal, rollover, and alternate).

=head2 TP [integer]
- (Optional; push-button fields only) A code indicating where to position the text of the widget annotation’s caption relative to its icon:
0 No icon; caption only
1 No caption; icon only
2 Caption below the icon
3 Caption above the icon
4 Caption to the right of the icon
5 Caption to the left of the icon
6 Caption overlaid directly on the icon
Default value: 0.

=end pod
