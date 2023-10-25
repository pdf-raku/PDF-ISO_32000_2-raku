use v6;
role ISO_32000_2::Table_303-Entries_in_a_software_identifier_dictionary {
    method Type {...};
    method U {...};
    method L {...};
    method LI {...};
    method H {...};
    method HI {...};
    method OS {...};
}

=begin pod

=head1 Description

Table 303 — Entries in a software identifier dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SoftwareIdentifier for a software identifier dictionary.

=head2 U [ASCII string]
- (Required) A URI that identifies a piece of software (see 13.2.7.4.3, "Software URIs").

=head2 L [array]
- (Optional) The lower bound of the range of software versions that this software identifier dictionary specifies (see 13.2.7.4.4, "Version arrays"). Default value: the array [0].

=head2 LI [boolean]
- (Optional) If true, the lower bound of the interval defined by L and H is inclusive; that is, the software version is greater than or equal to L (see 13.2.7.4.4, "Version arrays"). If false, it is not inclusive. Default value: true.

=head2 H [array]
- (Optional) The upper bound of the range of software versions that this software identifier dictionary specifies (see 13.2.7.4.4, "Version arrays"). Default value: an empty array [].

=head2 HI [boolean]
- (Optional) If true, the upper bound of the interval defined by L and H is inclusive; that is, the software version is less than or equal to H (see 13.2.7.4.4, "Version arrays"). If false, it is not inclusive. Default value: true.

=head2 OS [array]
- (Optional) An array of byte strings representing operating system identifiers that indicates to which operating systems this object applies. The defined values are the same as those defined for SMIL 3.0’s systemOperatingSystem attribute. There may not be multiple copies of the same identifier in the array. An empty array represents all operating systems. Default value: an empty array.

=end pod
