use v6;
role ISO_32000_2::Table_402-Entries_in_a_DestOutputProfileRef_dictionary {
    method CheckSum {...};
    method ColorantTable {...};
    method ICCVersion {...};
    method ProfileCS {...};
    method ProfileName {...};
    method URLs {...};
}

=begin pod

=head1 Description

Table 402 — Entries in a DestOutputProfileRef dictionary

=head1 Methods (Entries)

=head2 CheckSum [string]
- (Optional, PDF 2.0) An MD5 hash consisting of a 16 byte string that is computed as described in "7.11.4, "Embedded file streams" for the uncompressed ICC profile file.
NOTE 1 Any MD5 embedded within the ICC profile itself is computed differently and is inappropriate for use as the value of the CheckSum key.
NOTE 2 This is strictly a checksum, and is not used for security purposes.

=head2 ColorantTable [array]
- (Optional, PDF 2.0) An array of colourant names, each of which is encoded as a name object. The order and names of the colourants in ColorantTable is identical to those in the ICC colorantTableTag in the ICC profile.

=head2 ICCVersion [string]
- (Optional, PDF 2.0) The value of bytes 8 to 11, ICC profile version number, from the header of the ICC profile.

=head2 ProfileCS [string]
- (Optional, PDF 2.0) The four-byte colour space signature of the ICC profile, including any space characters.

=head2 ProfileName [text string]
- (Optional, PDF 2.0) The value of the ICC profileDescriptionTag from the ICC profile.

=head2 URLs [array]
- (Optional, PDF 2.0) An array, containing at least one element, where each element is an embedded file specification (7.11.4, "Embedded file streams") or a URL file specification (7.11.5, "URL specifications").
NOTE: ICC profiles referenced via the URLs array do not have to conform to the ICCBased requirements of "Table 67 — ICC profile types" and thus can also support N-component output profiles.

=end pod
