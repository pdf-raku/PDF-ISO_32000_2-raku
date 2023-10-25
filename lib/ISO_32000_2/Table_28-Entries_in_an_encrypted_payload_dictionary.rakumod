use v6;
role ISO_32000_2::Table_28-Entries_in_an_encrypted_payload_dictionary {
    method Type {...};
    method Subtype {...};
    method Version {...};
}

=begin pod

=head1 Description

Table 28 — Entries in an encrypted payload dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is EncryptedPayload for an encrypted payload file specification.

=head2 Subtype [name]
- (Required) The name of the cryptographic filter used to encrypt the encrypted payload document. This allows a PDF processor to easily determine whether it has the appropriate cryptographic filter.

=head2 Version [name]
- (Optional) The version number of the cryptographic filter used to encrypt the encrypted payload referenced by this dictionary.
NOTE The value of Version is not to be interpreted as a real number but as integers with a PERIOD (2Eh) between them.

=end pod
