use v6;
role ISO_32000_2::Table_23-Additional_encryption_dictionary_entries_for_public-key_security_handlers {
    method Recipients {...};
}

=begin pod

=head1 Description

Table 23 — Additional encryption dictionary entries for public-key security handlers

=head1 Methods (Entries)

=head2 Recipients [array]
- (Required when SubFilter is adbe.pkcs7.s3 or adbe.pkcs7.s4; PDF 1.3) An array of byte-strings, where each string is a CMS object listing recipients who have been granted equal access rights to the document. The data contained in the CMS object includes both a cryptographic key that is used to decrypt the encrypted data and the access permissions (see "Table 24 — Public-key security handler user access permissions") that apply to the recipient list. There is only one CMS object per unique set of access permissions; if a recipient appears in more than one list, the permissions used is those in the first matching list.
When SubFilter is adbe.pkcs7.s5, recipient lists is specified in the crypt filter dictionary; see "Table 27 — Additional crypt filter dictionary entries for public-key security handlers".

=end pod
