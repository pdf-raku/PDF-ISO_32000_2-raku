use v6;
role ISO_32000_2::Table_25-Entries_common_to_all_crypt_filter_dictionaries {
    method Type {...};
    method CFM {...};
    method AuthEvent {...};
    method Length {...};
}

=begin pod

=head1 Description

Table 25 — Entries common to all crypt filter dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) If present, is CryptFilter for a crypt filter dictionary.

=head2 CFM [name]
- (Optional) The method used, if any, by the PDF reader to decrypt data. The following values is supported:
None The application does not decrypt data but shall direct the input stream to the security handler for decryption.
V2 (Deprecated in PDF 2.0) The application shall ask the security handler for the file encryption key and shall implicitly decrypt data with 7.6.3.2, "Algorithm 1: Encryption of data using the RC4 or AES algorithms", using the RC4 algorithm.
AESV2 (PDF 1.6; deprecated in PDF 2.0) The application shall ask the security handler for the file encryption key and shall implicitly decrypt data with 7.6.3.2, "Algorithm 1: Encryption of data using the RC4 or AES algorithms", using the AES algorithm in Cipher Block Chaining (CBC) mode with a 16-byte block size and an initialization vector that is randomly generated and placed as the first 16 bytes in the stream or string. The key size (Length) is 128 bits.
AESV3 (PDF 2.0) The application shall ask the security handler for the file encryption key and shall implicitly decrypt data with 7.6.3.3, "Algorithm 1.A: Encryption of data using the AES algorithms", using the AES-256 algorithm in Cipher Block Chaining (CBC) with padding mode with a 16-byte block size and an initialization vector that is randomly generated and placed as the first 16 bytes in the stream or string. The key size (Length) is 256 bits.
When the value is V2, AESV2 or AESV3, the application may ask once for this file encryption key and cache the key for subsequent use for streams that use the same crypt filter. Therefore, there is a one-to-one relationship between a crypt filter name and the corresponding file encryption key.
Only the values listed here is supported. Applications that encounter other values reports that the file is encrypted with an unsupported algorithm.
Default value: None.

=head2 AuthEvent [name]
- (Optional) The event that is used to trigger the authorization that is required to access file encryption keys used by this filter. If authorization fails, the event fails. Valid values is:
DocOpen Authorization is required when a document is opened.
EFOpen Authorization is required when accessing embedded files.
Default value: DocOpen.
If this filter is used as the value of StrF or StmF in the encryption dictionary (see "Table 20 — Entries common to all encryption dictionaries"), the PDF reader ignores this key and behave as if the value is DocOpen.

=head2 Length [integer]
- (Required; deprecated in PDF 2.0) Security handlers may define their own use of the Length entry and uses it to define the bit length of the file encryption key. The bit length of the file encryption key is a multiple of 8 in the range of 40 to 256. The standard security handler expresses the Length entry in bytes (e.g., 32 means a length of 256 bits) and public-key security handlers express it as is (e.g., 256 means a length of 256 bits).
When CFM is AESV2, the Length key has the value of 128. When CFM is AESV3, the Length key has a value of 256.
NOTE (2020) The Length key was corrected to be required and the descriptive text updated.

=end pod
