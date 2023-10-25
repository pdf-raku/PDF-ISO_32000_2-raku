use v6;
role ISO_32000_2::Table_112-Entries_in_an_encoding_dictionary {
    method Type {...};
    method BaseEncoding {...};
    method Differences {...};
}

=begin pod

=head1 Description

Table 112 — Entries in an encoding dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Encoding for an encoding dictionary.

=head2 BaseEncoding [name]
- (Optional) The base encoding — that is, the encoding from which the Differences entry (if present) describes differences — is the name of one of the predefined encodings MacRomanEncoding, MacExpertEncoding, or WinAnsiEncoding (see Annex D, "Character sets and encodings").
If this entry is absent, the Differences entry describes differences from a default base encoding. For a font program that is embedded in the PDF file, the default base encoding is the font program’s built-in encoding, as described in 9.6.5, "Character encoding" and further elaborated in the subclauses on specific font types. Otherwise, for a nonsymbolic font, it is StandardEncoding, and for a symbolic font, it is the font’s built-in encoding.

=head2 Differences [array]
- (Optional; is not used with TrueType fonts) An array describing the differences from the encoding specified by BaseEncoding or, if BaseEncoding is absent from a default base encoding. The Differences array is described in subsequent subclauses.

=end pod
