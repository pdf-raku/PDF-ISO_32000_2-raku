use v6;
role ISO_32000_2::Table_70-Entries_in_a_DeviceN_colour_space_attributes_dictionary {
    method Subtype {...};
    method Colorants {...};
    method Process {...};
    method MixingHints {...};
}

=begin pod

=head1 Description

Table 70 — Entries in a DeviceN colour space attributes dictionary

=head1 Methods (Entries)

=head2 Subtype [name]
- (Optional; PDF 1.6) A name specifying the preferred treatment for the colour space. Values is DeviceN or NChannel. Default value: DeviceN.

=head2 Colorants [dictionary]
- (Required if Subtype is NChannel and the colour space includes spot colourants; otherwise optional; PDF 1.6) A dictionary describing the individual colourants used in the DeviceN colour space. For each entry in this dictionary, the key is a colourant name and the value is an array defining a Separation colour space for that colourant (see 8.6.6.4, "Separation colour spaces"). The key matches the colourant name given in that colour space.
This dictionary provides information about the individual colourants that may be useful to some PDF processors. In particular, the alternate colour space and tint transformation function of a Separation colour space describe the appearance of that colourant alone, whereas those of a DeviceN colour space describe only the appearance of its colourants in combination.

=head2 Process [dictionary]
- (Required if Subtype is NChannel and the colour space includes components of a process colour space, otherwise optional; PDF 1.6) A dictionary (see "Table 71 — Entries in a DeviceN process dictionary") that describes the process colour space whose components are included in this colour space.

=head2 MixingHints [dictionary]
- (Optional; PDF 1.6) A dictionary (see "Table 72 — Entries in a DeviceN mixing hints dictionary") that specifies optional attributes of the inks that is used in blending calculations when used as an alternative to the tint transformation function.

=end pod
