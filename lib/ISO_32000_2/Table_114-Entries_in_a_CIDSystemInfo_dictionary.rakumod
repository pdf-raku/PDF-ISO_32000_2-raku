use v6;
role ISO_32000_2::Table_114-Entries_in_a_CIDSystemInfo_dictionary {
    method Registry {...};
    method Ordering {...};
    method Supplement {...};
}

=begin pod

=head1 Description

Table 114 — Entries in a CIDSystemInfo dictionary

=head1 Methods (Entries)

=head2 Registry [ASCII string]
- (Required) A string identifying the issuer of the character collection. The string shall begin with the 4 or 5 characters of a registered developer prefix followed by a LOW LINE (5Fh) followed by any other identifying characters chosen by the issuer. See Annex E, "Extending PDF", for how to obtain a unique developer prefix.

=head2 Ordering [ASCII string]
- (Required) A string that uniquely names the character collection within the specified registry.

=head2 Supplement [integer]
- (Required) The supplement number of the character collection. An original character collection has a supplement number of 0. Whenever additional CIDs are assigned in a character collection, the supplement number is increased. Supplements does not alter the ordering of existing CIDs in the character collection. This value is not used in determining compatibility between character collections.

=end pod
