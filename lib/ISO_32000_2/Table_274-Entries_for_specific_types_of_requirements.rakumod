use v6;
role ISO_32000_2::Table_274-Entries_for_specific_types_of_requirements {
    method Encrypt {...};
    method DigSig {...};
}

=begin pod

=head1 Description

Table 274 — Entries for specific types of requirements

=head1 Methods (Entries)

=head2 Encrypt [dictionary]
- (Required, if the S key has the value Encryption: PDF 2.0) An encryption dictionary ("Table 20 — Entries common to all encryption dictionaries") that defines all of the relevant aspects of the encryption method needed to process the document.

=head2 DigSig [dictionary]
- (Optional, but only used when the S key has the value of DigSig, DigSigValidation or DigSigMDP; PDF 2.0) A signature dictionary ("Table 255 — Entries in a signature dictionary") that defines all of the relevant aspects that are needed in order to process the digital signature requirements.

=end pod
