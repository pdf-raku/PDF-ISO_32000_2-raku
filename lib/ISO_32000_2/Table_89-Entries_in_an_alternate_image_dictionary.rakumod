use v6;
role ISO_32000_2::Table_89-Entries_in_an_alternate_image_dictionary {
    method Image {...};
    method DefaultForPrinting {...};
    method OC {...};
}

=begin pod

=head1 Description

Table 89 — Entries in an alternate image dictionary

=head1 Methods (Entries)

=head2 Image [stream]
- (Required) The image XObject for the alternate image.

=head2 DefaultForPrinting [boolean]
- (Optional) A flag indicating whether this alternate image is the default version to be used for printing according to the algorithm described below. At most one alternate for a given base image is so designated. Default value: false.

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group (see 8.11.2, "Optional content groups") or optional content membership dictionary (see 8.11.2.2, "Optional content membership dictionaries") that facilitates the selection of which alternate image to use.

=end pod
