use v6;
role ISO_32000_2::Table_261-Entries_in_the_document_security_store_dictionary {
    method Type {...};
    method VRI {...};
    method Certs {...};
    method OCSPs {...};
    method CRLs {...};
}

=begin pod

=head1 Description

Table 261 — Entries in the document security store (DSS) dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) If present, is DSS for a document security store dictionary.

=head2 VRI [dictionary]
- (Optional) This dictionary contains Signature VRI dictionaries (see 12.8.4.4, "Validation-related information (VRI)"). The key of each entry in this dictionary is the base-16-encoded (uppercase) SHA-1 digest of the signature to which it appliesa and the value is the Signature VRI dictionary which contains the validation-related information for that signature.

=head2 Certs [array]
- (Optional) An array of indirect reference to streams, each containing one DER-encoded X.509 certificate (see Internet RFC 5280). This array contains certificates that may be used in the validation of any signatures in the document.

=head2 OCSPs [array]
- (Optional) An array of indirect references to streams, each containing a DER-encoded Online Certificate Status Protocol (OCSP) response (see Internet RFC 6960). This array contains OCSPs that may be used in the validation of the signatures in the document.

=head2 CRLs [array]
- (Optional) An array of indirect references to streams, each containing a DER-encoded Certificate Revocation List (CRL) (see Internet RFC 5280). This array contains CRLs that may be used in the validation of the signatures in the document.

=end pod
