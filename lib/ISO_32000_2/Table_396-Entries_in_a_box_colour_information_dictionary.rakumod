use v6;
role ISO_32000_2::Table_396-Entries_in_a_box_colour_information_dictionary {
    method CropBox {...};
    method BleedBox {...};
    method TrimBox {...};
    method ArtBox {...};
}

=begin pod

=head1 Description

Table 396 — Entries in a box colour information dictionary

=head1 Methods (Entries)

=head2 CropBox [dictionary]
- (Optional) A box style dictionary (see "Table 397 — Entries in a box style dictionary") specifying the visual characteristics for displaying guidelines for the page’s crop box. This entry is ignored if no crop box is defined in the page object.

=head2 BleedBox [dictionary]
- (Optional) A box style dictionary (see "Table 397 — Entries in a box style dictionary") specifying the visual characteristics for displaying guidelines for the page’s bleed box. This entry is ignored if no bleed box is defined in the page object.

=head2 TrimBox [dictionary]
- (Optional) A box style dictionary (see "Table 397 — Entries in a box style dictionary") specifying the visual characteristics for displaying guidelines for the page’s trim box. This entry is ignored if no trim box is defined in the page object.

=head2 ArtBox [dictionary]
- (Optional) A box style dictionary (see "Table 397 — Entries in a box style dictionary") specifying the visual characteristics for displaying guidelines for the page’s art box. This entry is ignored if no art box is defined in the page object.

=end pod
