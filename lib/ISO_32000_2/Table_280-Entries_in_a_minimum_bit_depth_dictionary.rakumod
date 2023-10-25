use v6;
role ISO_32000_2::Table_280-Entries_in_a_minimum_bit_depth_dictionary {
    method Type {...};
    method V {...};
    method M {...};
}

=begin pod

=head1 Description

Table 280 — Entries in a minimum bit depth dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MinBitDepth for a minimum bit depth dictionary.

=head2 V [integer]
- (Required) A positive integer specifying the minimum screen depth (in bits) of the monitor for the rendition to be viable.

=head2 M [integer]
- (Optional) A monitor specifier (see "Table 304 — Monitor specifier values") that specifies which monitor the value of V is tested against. If the value is unrecognised, the object is not viable.
Default value: 0.

=end pod
