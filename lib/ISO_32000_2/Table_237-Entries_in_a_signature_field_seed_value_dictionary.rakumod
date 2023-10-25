use v6;
role ISO_32000_2::Table_237-Entries_in_a_signature_field_seed_value_dictionary {
    method Type {...};
    method Ff {...};
    method Filter {...};
    method SubFilter {...};
    method DigestMethod {...};
    method V {...};
    method Cert {...};
    method Reasons {...};
    method MDP {...};
    method TimeStamp {...};
    method LegalAttestation {...};
    method AddRevInfo {...};
    method LockDocument {...};
    method AppearanceFilter {...};
}

=begin pod

=head1 Description

Table 237 — Entries in a signature field seed value dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SV for a seed value dictionary.

=head2 Ff [integer]
- (Optional) A set of bit flags specifying the interpretation of specific entries in this dictionary. A value of 1 for the flag indicates that the associated entry is a required constraint. A value of 0 indicates that the associated entry is an optional constraint. Bit positions are 1 (Filter); 2 (SubFilter); 3 (V); 4 (Reasons); 5 (LegalAttestation); 6 (AddRevInfo); and 7 (DigestMethod). For PDF 2.0 the following bit flags are added: 8 (Lockdocument); and 9 (AppearanceFilter). Default value: 0.

=head2 Filter [name]
- (Optional) The signature handler that is used to sign the signature field. Beginning with PDF 1.7, if Filter is specified and the Ff entry indicates this entry is a required constraint, then the signature handler specified by this entry is used when signing; otherwise, signing does not take place. If Ff indicates that this is an optional constraint, this handler may be used if it is available. If it is not available, a different handler may be used instead.

=head2 SubFilter [array]
- (Optional) An array of names indicating encodings to use when signing. The first name in the array that matches an encoding supported by the signature handler is the encoding that is actually used for signing. If SubFilter is specified and the Ff entry indicates that this entry is a required constraint, then the first matching encodings is used when signing; otherwise, signing does not take place. If Ff indicates that this is an optional constraint, then the first matching encoding is used if it is available. If none is available, a different encoding may be used.

=head2 DigestMethod [array]
- (Optional; PDF 1.7) An array of names indicating acceptable digest algorithms to use while signing. The value is one of SHA1 (deprecated with PDF 2.0), SHA256, SHA384, SHA512 and RIPEMD160. The default value is implementation-specific.
This property is only applicable if the digital credential signing contains RSA public/private keys. If it contains DSA public/ private keys, the digest algorithm is always SHA-1 and this attribute is ignored.

=head2 V [integer]
- (Optional) The minimum required capability of the signature field seed value dictionary parser. A value of 1 specifies that the parser is able to recognise all seed value dictionary entries in a PDF 1.5 file. A value of 2 specifies that it is able to recognise all seed value dictionary entries specified. A value of 3 specifies that it is able to recognise all seed value dictionary entries specified in PDF 2.0 and earlier.
The Ff entry indicates whether this is treated as a required constraint.

=head2 Cert [dictionary]
- (Optional) A certificate seed value dictionary (see "Table 238 — Entries in a certificate seed value dictionary") containing information about the characteristics of the certificate that is used when signing.

=head2 Reasons [array]
- (Optional) An array of text strings that specifying possible reasons for signing a document. If specified, the reasons supplied in this entry replace those used by interactive PDF processors.
If the Reasons array is provided and the Ff entry indicates that Reasons is a required constraint, one of the reasons in the array is used for the signature dictionary; otherwise, signing does not take place. If the Ff entry indicates Reasons is an optional constraint, one of the reasons in the array may be chosen or a custom reason can be provided.
If the Reasons array is omitted or contains a single entry with the value PERIOD (2Eh) and the Ff entry indicates that Reasons is a required constraint, the Reason entry is omitted from the signature dictionary (see "Table 255 — Entries in a signature dictionary").

=head2 MDP [dictionary]
- (Optional; PDF 1.6) A dictionary containing a single entry whose key is P and whose value is an integer between 0 and 3. A value of 0 defines the signature as an approval signature (see 12.8, "Digital signatures"). The values 1 through 3 is used for certification signatures and correspond to the value of P in a DocMDP transform parameters dictionary (see "Table 257 — Entries in the DocMDP transform parameters dictionary").
If this MDP key is not present or the MDP dictionary does not contain a P entry, no rules is defined regarding the type of signature or its permissions.

=head2 TimeStamp [dictionary]
- (Optional; PDF 1.6) A timestamp dictionary containing two entries:
URL An ASCII string specifying the URL of a timestamping server, providing a timestamp that is compliant with Internet RFC 3161 as updated by Internet RFC 5816.
Ff An integer whose value is 1 (the signature has a timestamp) or 0 (the signature need not have a timestamp). Default value: 0.
NOTE 1 Please see 12.8.3.3, "CMS (PKCS 7) signatures" for more details about hashing.

=head2 LegalAttestation [array]
- (Optional; PDF 1.6) An array of text strings specifying possible legal attestations (see 12.8.7, "Legal content attestations"). The value of the corresponding flag in the Ff entry indicates whether this is a required constraint.

=head2 AddRevInfo [boolean]
- (Optional; PDF 1.7) A flag indicating whether revocation checking is carried out. If AddRevInfo is true, the PDF processor performs the following additional tasks when signing the signature field:
Three SubFilter values have been defined. For those values the AddRevInfo value is true only if SubFilter is adbe.pkcs7.detached or adbe.pkcs7.sha1. If SubFilter is adbe.x509.rsa_sha1, this entry is omitted or set to false. Additional SubFilter values may be defined that also use AddRevInfo values.
If AddRevInfo is true and the Ff entry indicates this is a required constraint, then the preceding tasks is performed. If they cannot be performed, then signing fails.
Default value: false
NOTE 2 Revocation information is carried in the signature data as specified by PKCS 7. See 12.8.3.3, "CMS (PKCS 7) signatures".
NOTE 3 adbe.pkcs7.detached and adbe.pkcs7.sha1 are deprecated in PDF 2.0.

=head2 LockDocument [name]
- (Optional; PDF 2.0) A name value supplying the author’s intent for whether the signing dialogue should allow the user to lock the document at the time of signing. The value is one of true, false, and auto, as follows:
true the document is locked at the time of signing. If the Ff entry indicates that LockDocument is not a required constraint, the user may choose to override this at the time of signing; otherwise, the document is locked after signing.
false the document is not locked after signing. Again, the required flag, Ff, determines whether this is a required constraint.
auto the consuming application decided whether to present the lock user interface for the document and whether to honour the required flag, Ff, based on the properties of the document.
Default value: auto

=head2 AppearanceFilter [text string]
- (Optional; PDF 2.0) A text string naming the appearance that is used when signing the signature field. interactive PDF processors may choose to maintain a list of named signature appearances. This text string provides authors with a means of specifying which appearance is used to sign the signature field.
If the required bit AppearanceFilter in Ff is set, the appearance is available to sign the document and is used.

=end pod
