use v6;
role ISO_32000_2::Table_124-Embedded_font_organisation_for_various_font_types {
    method FontFile {...};
    method FontFile2 {...};
    method FontFile3 {...};
}

=begin pod

=head1 Description

Table 124 — Embedded font organisation for various font types

=head1 Methods (Entries)

=head2 FontFile [—]
- Type 1 font program, in the original (noncompact) format described in Adobe Type 1 Font Format. This entry may appear in the font descriptor for a Type1 or MMType1 font dictionary.
The font program provided as the value of this key conforms to the Adobe Type 1 Font Format and/or Adobe Technical Note 5015, Type 1 Font Format Supplement.

=head2 FontFile2 [—]
- (PDF 1.1) TrueType font program, as described in the TrueType Reference Manual. This entry may appear in the font descriptor for a TrueType font dictionary or (PDF 1.3) for a CIDFontType2 CIDFont dictionary.
The font program provided as the value of this key conforms to the TrueType Reference Manual. The font program includes these tables: "glyf", "head", "hhea", "hmtx", "loca", and "maxp". The "cvt " (notice the trailing SPACE), "fpgm", and "prep" tables is also included if they are required by the font instructions.

=head2 FontFile3 [Type1C]
- (PDF 1.2) Type 1–equivalent font program represented in the Compact Font Format (CFF), as described in Adobe Technical Note 5176, The Compact Font Format Specification. This entry may appear in the font descriptor for a Type1 or MMType1 font dictionary.
The font program provided as the value of this key conforms to Adobe Technical Note 5176.

=head2 FontFile3 [CIDFontType0C]
- (PDF 1.3) Type 0 CIDFont program represented in the Compact Font Format (CFF), as described in Adobe Technical Note 5176, The Compact Font Format Specification. This entry may appear in the font descriptor for a CIDFontType0 CIDFont dictionary.
The font program provided as the value of this key conforms to Adobe Technical Note 5176.

=head2 FontFile3 [OpenType]
- (PDF 1.6) OpenType font program, as described in ISO/IEC 14496-22. OpenType is an extension of TrueType that allows inclusion of font programs that use the Compact Font Format (CFF).
A FontFile3 entry with an OpenType subtype may appear in the font descriptor for these types of font dictionaries.
ISO/IEC 14496-22 describes a set of required tables; however, not all tables are required in the font file, as described for each type of font dictionary that can include this entry.
The font program provided as the value of this key conforms to ISO/IEC 14496-22:2019.
NOTE The absence of some optional tables (such as those used for advanced line layout) can prevent editing of text containing the font.

=end pod
