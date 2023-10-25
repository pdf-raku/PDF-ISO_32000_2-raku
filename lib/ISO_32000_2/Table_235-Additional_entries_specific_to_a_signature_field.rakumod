use v6;
role ISO_32000_2::Table_235-Additional_entries_specific_to_a_signature_field {
    method Lock {...};
    method SV {...};
}

=begin pod

=head1 Description

Table 235 — Additional entries specific to a signature field

=head1 Methods (Entries)

=head2 Lock [dictionary]
- (Optional; is an indirect reference; PDF 1.5) A signature field lock dictionary that specifies a set of form fields that is locked when this signature field is signed. "Table 236 — Entries in a signature field lock dictionary" lists the entries in this dictionary.

=head2 SV [dictionary]
- (Optional; is an indirect reference; PDF 1.5) A seed value dictionary (see "Table 237 — Entries in a signature field seed value dictionary") containing information that constrains the properties of a signature that is applied to this field.

=end pod
