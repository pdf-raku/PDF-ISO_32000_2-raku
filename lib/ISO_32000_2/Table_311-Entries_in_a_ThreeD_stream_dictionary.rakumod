use v6;
role ISO_32000_2::Table_311-Entries_in_a_ThreeD_stream_dictionary {
    method Type {...};
    method Subtype {...};
    method VA {...};
    method DV {...};
    method Resources {...};
    method OnInstantiate {...};
    method AN {...};
    method ColorSpace {...};
}

=begin pod

=head1 Description

Table 311 — Entries in a 3D stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3D for a 3D stream.

=head2 Subtype [name]
- (Required) A name specifying the format of the 3D data contained in the stream.
The following are the only recognised values:
U3D which specifies the Universal 3D file format.
PRC which specifies the PRC file format. (PDF 2.0)

=head2 VA [array]
- (Optional) An array of 3D view dictionaries, each of which specifies a named preset view of this 3D artwork (see 13.6.4, "3D views").

=head2 DV [(various)]
- (Optional) An object that specifies the default (initial) view of the 3D artwork. It may be a 3D view dictionary (see 13.6.4, "3D views") or one of the following types:
Default value: 0 (the first entry in the VA array) if VA is present; if VA is not present, the default view is specified within the 3D stream itself.

=head2 Resources [name tree]
- (Optional) A name tree that maps name strings to objects that may be used by applications or scripts to modify the default view of the 3D artwork.
The names in this name tree is text strings so as to be encoded in a way that will be accessible from ECMAScript.

=head2 OnInstantiate [stream]
- (Optional) An ECMAScript script that is executed when the 3D stream is instantiated.

=head2 AN [dictionary]
- (Optional; PDF 1.7) An animation style dictionary indicating the method that interactive PDF processors uses to drive keyframe animations present in this artwork (see 13.6.3.2, "3D animation style dictionaries").
Default value: an animation style dictionary whose Subtype entry has a value of None.

=head2 ColorSpace [name or array]
- (Optional, PDF 2.0) The RGB colour space in which the 3D artwork’s colour values are encoded. Valid values are the name DeviceRGB, an array specifying a valid CalRGB color space (see 8.6.5.3 "CalRGB colour spaces"), or an array specifying a valid RGB-based ICCBased color space (see 8.6.5.5 "ICCBased colour spaces"). If this key is not present, the colour space for the 3D artwork colour values are considered undefined and a PDF processor may choose any appropriate RGB-based colour space, such as sRGB.

=end pod
