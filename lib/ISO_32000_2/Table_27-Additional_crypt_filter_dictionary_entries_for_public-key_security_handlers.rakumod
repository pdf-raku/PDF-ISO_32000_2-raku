use v6;
role ISO_32000_2::Table_27-Additional_crypt_filter_dictionary_entries_for_public-key_security_handlers {
    method Recipients {...};
    method EncryptMetadata {...};
}

=begin pod

=head1 Description

Table 27 — Additional crypt filter dictionary entries for public-key security handlers

=head1 Methods (Entries)

=head2 Recipients [string or array]
- (Required) If the crypt filter is referenced from StmF or StrF in the encryption dictionary, this entry is an array of byte strings, where each string is a binary-encoded CMS object that lists recipients that have been granted equal access rights to the document. The enveloped data contained in the CMS object includes both a 20-byte seed value that is used to compute the file encryption key (see 7.6.5.3, "Public-key encryption algorithms") followed by 4 bytes of permissions settings (see "Table 24 — Public-key security handler user access permissions") that applies to the recipient list. There is only one object per unique set of access permissions. If a recipient appears in more than one list, the permissions used is those in the first matching list.
NOTE (2020) The cross-reference to Table 24 in the above paragraph was corrected.
If the crypt filter is referenced from a Crypt filter decode parameter dictionary (see "Table 14 — Optional parameters for Crypt filters"), this entry is a string that is a binary-encoded CMS object that contains a list of all recipients who are permitted to access the corresponding encrypted stream. The enveloped data contained in the CMS

=head2 EncryptMetadata [boolean]
- (Optional; used only by crypt filters that are referenced from StmF in an encryption dictionary) Indicates whether the document-level metadata stream (see 14.3.2, "Metadata streams") is encrypted. PDF processors respect this value when determining whether metadata is encrypted. The value of the EncryptMetadata entry is set by the security handler rather than the PDF processor. Default value: true.

=end pod
