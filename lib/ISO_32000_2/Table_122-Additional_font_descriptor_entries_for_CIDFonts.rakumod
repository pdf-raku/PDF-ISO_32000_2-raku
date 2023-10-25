use v6;
role ISO_32000_2::Table_122-Additional_font_descriptor_entries_for_CIDFonts {
    method Style {...};
    method Lang {...};
    method FD {...};
    method CIDSet {...};
}

=begin pod

=head1 Description

Table 122 — Additional font descriptor entries for CIDFonts

=head1 Methods (Entries)

=head2 Style [dictionary]
- (Optional) A dictionary containing entries that describe the style of the glyphs in the font (see 9.8.3.2, "Style").

=head2 Lang [name]
- (Optional; PDF 1.5) A name specifying the language of the font, which may be used for encodings where the language is not implied by the encoding itself. The value is a Language-Tag as defined in BCP 47. If this entry is absent, such absence provides no information as to the language of the document; in particular, an absence of this entry does not by itself mean the language of the document is unknown.

=head2 FD [dictionary]
- (Optional) A dictionary whose keys identify a class of glyphs in a CIDFont.
Each value is a dictionary containing entries that overrides the corresponding values in the main font descriptor dictionary for that class of glyphs (see 9.8.3.3, "FD").

=head2 CIDSet [stream]
- (Optional; deprecated in PDF 2.0) A stream identifying which CIDs are present in the CIDFont file. If this entry is present, the CIDFont contains only a subset of the glyphs in the character collection defined by the CIDSystemInfo dictionary. If it is absent, the only indication of a CIDFont subset is the subset tag in the FontName entry (see 9.9.2, "Font subsets").
The stream’s data is organised as a table of bits indexed by CID. The bits is stored in bytes with the high-order bit first. Each bit corresponds to a CID. The most significant bit of the first byte corresponds to CID 0, the next bit to CID 1, and so on.

=end pod
