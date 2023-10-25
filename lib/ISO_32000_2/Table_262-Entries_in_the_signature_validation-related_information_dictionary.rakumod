use v6;
role ISO_32000_2::Table_262-Entries_in_the_signature_validation-related_information_dictionary {
    method Type {...};
    method Cert {...};
    method CRL {...};
    method OCSP {...};
    method TU {...};
    method TS {...};
}

=begin pod

=head1 Description

Table 262 — Entries in the signature validation-related information (VRI) dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) If present, is VRI for a validation-related information dictionary.

=head2 Cert [array]
- (Optional) An array of (indirect references to) streams, each containing one DER-encoded X.509 certificate (see Internet RFC 5280). This array contains certificates that were used in the validation of this signature.

=head2 CRL [array]
- (Required, if a CRL is present) An array of indirect references to streams that are all CRLs used to determine the validity of the certificates in the chains related to this signature. Each stream shall reference a CRL that is an entry in the CRLs array in the DSS dictionary.

=head2 OCSP [array]
- (Required, if an OCSP is present) An array of indirect references to streams that are all OCSPs used to determine the validity of the certificates in the chains related to this signature. Each stream shall reference an OCSP that is an entry in the OCSPs array in the DSS dictionary.

=head2 TU [date]
- (Optional) The date/time at which this signature VRI dictionary was created. TU is a date string as defined in 7.9.4, "Dates".

=head2 TS [stream]
- (Optional) A stream containing the DER-encoded timestamp (see Internet RFC 3161 as updated by Internet RFC 5816) that contains the date/time at which this signature VRI dictionary was created.
NOTE 1 The date/time contained in the timestamp token can be used for audit purposes.
NOTE 2 The hash value to be contained in the timestamp token is left undefined. For PKCS 7 signatures the datum that is hashed and included in the messageImprint field of the DER encoded timestamp stored in the TS entry (see Internet RFC 3161 as updated by Internet RFC 5816) is the encryptedDigest field in the signature's PKC S7 object (as defined in Internet RFC 2315).

=end pod
