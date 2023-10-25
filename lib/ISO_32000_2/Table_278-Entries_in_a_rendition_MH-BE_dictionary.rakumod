use v6;
role ISO_32000_2::Table_278-Entries_in_a_rendition_MH-BE_dictionary {
    method C {...};
}

=begin pod

=head1 Description

Table 278 — Entries in a rendition MH/BE dictionary

=head1 Methods (Entries)

=head2 C [dictionary]
- (Optional) A media criteria dictionary (see "Table 279 — Entries in a media criteria dictionary").
The media criteria dictionary behaves somewhat differently than other MH/ BE entries described in 13.2.2, "Viability". The criteria specified by all of its entries is met regardless of whether it is in a MH or a BE dictionary. The only exception is that if an entry in a BE dictionary is unrecognised by the interactive PDF processor, it does not affect the viability of the object.

=end pod
