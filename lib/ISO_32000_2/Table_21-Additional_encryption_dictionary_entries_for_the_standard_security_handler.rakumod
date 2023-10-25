use v6;
role ISO_32000_2::Table_21-Additional_encryption_dictionary_entries_for_the_standard_security_handler {
    method R {...};
    method O {...};
    method U {...};
    method OE {...};
    method UE {...};
    method P {...};
    method Perms {...};
    method EncryptMetadata {...};
}

=begin pod

=head1 Description

Table 21 — Additional encryption dictionary entries for the standard security handler

=head1 Methods (Entries)

=head2 R [integer]
- (Required) A number specifying which revision of the standard security handler is used to interpret this dictionary:
2 (Deprecated in PDF 2.0) if the document is encrypted with a V value less than 2 (see "Table 20 — Entries common to all encryption dictionaries") and does not have any of the access permissions set to 0 (by means of the P entry, below) that are designated "Security handlers of revision 3 or greater" in "Table 22 — Standard security handler user access permissions".
3 (Deprecated in PDF 2.0) if the document is encrypted with a V value of 2 or 3, or has any "Security handlers of revision 3 or greater" access permissions set to 0.
4 (Deprecated in PDF 2.0) if the document is encrypted with a V value of 4.
5 (PDF 2.0; deprecated in PDF 2.0) Shall not be used. This value was used by a deprecated proprietary Adobe extension.
6 (PDF 2.0) if the document is encrypted with a V value of 5.

=head2 O [byte string]
- (Required) A byte string, 32 bytes long if the value of R is 4 or less and 48 bytes long if the value of R is 6, based on both the owne r and user passwords, that is used in computing the file encryption key and in determining whether a valid owner password was entered.
For more information, see 7.6.4.3, "File encryption key algorithm" and 7.6.4.4, "Password algorithms".

=head2 U [byte string]
- (Required) A byte string, 32 bytes long if the value of R is 4 or less and 48 bytes long if the value of R is 6, based on the owner and user password, that is used in determining whether to prompt the user for a password and, if so, whether a valid user or owner password was entered. For more information, see 7.6.4.4, "Password algorithms".

=head2 OE [byte string]
- (Required if R is 6 (PDF 2.0)) A 32-byte string, based on the owner and user password, that is used in computing the file encryption key. For more information, see 7.6.4.4, "Password algorithms".

=head2 UE [byte string]
- (Required if R is 6 (PDF 2.0)) A 32-byte string, based on the user password, that is used in computing the file encryption key. For more information, see 7.6.4.4, "Password algorithms".

=head2 P [integer]
- (Required) A set of flags specifying which operations is permitted when the document is opened with user access (see "Table 22 — Standard security handler user access permissions").

=head2 Perms [byte string]
- (Required if R is 6 (PDF 2.0)) A 16-byte string, encrypted with the file encryption key, that contains an encrypted copy of the permissions flags. For more information, see 7.6.4.4, "Password algorithms".

=head2 EncryptMetadata [boolean]
- (Optional; meaningful only when the value of V is 4 (PDF 1.5) or 5 (PDF 2.0)) Indicates whether the document-level metadata stream (see 14.3.2, "Metadata streams") is encrypted. Default value: true.

=end pod
