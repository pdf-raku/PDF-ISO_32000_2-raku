use v6;
role ISO_32000_2::Table_144-Additional_entry_in_a_soft-mask_image_dictionary {
    method Matte {...};
}

=begin pod

=head1 Description

Table 144 — Additional entry in a soft-mask image dictionary

=head1 Methods (Entries)

=head2 Matte [array]
- (Optional; PDF 1.4) An array of component values specifying the matte colour with which the image data in the parent image has been pre-blended. The array consists of n numbers, where n is the number of components in the colour space specified by the ColorSpace entry (or the base entry of the colour space, if the colour space is Indexed) in the parent image’s image dictionary; the numbers is valid colour components in that colour space. If this entry is absent, the image data is not pre-blended.

=end pod
