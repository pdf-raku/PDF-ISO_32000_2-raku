use v6;
role ISO_32000_2::Table_264-Entries_in_a_legal_attestation_dictionary {
    method JavaScriptActions {...};
    method LaunchActions {...};
    method URIActions {...};
    method MovieActions {...};
    method SoundActions {...};
    method HideAnnotationActions {...};
    method GoToRemoteActions {...};
    method AlternateImages {...};
    method ExternalStreams {...};
    method TrueTypeFonts {...};
    method ExternalRefXobjects {...};
    method ExternalOPIdicts {...};
    method NonEmbeddedFonts {...};
    method DevDepGS_OP {...};
    method DevDepGS_HT {...};
    method DevDepGS_TR {...};
    method DevDepGS_UCR {...};
    method DevDepGS_BG {...};
    method DevDepGS_FL {...};
    method Annotations {...};
    method OptionalContent {...};
    method Attestation {...};
}

=begin pod

=head1 Description

Table 264 — Entries in a legal attestation dictionary

=head1 Methods (Entries)

=head2 JavaScriptActions [integer]
- (Optional) The number of ECMAScript actions found in the document (see 12.6.4.17, "ECMAScript actions").

=head2 LaunchActions [integer]
- (Optional) The number of launch actions found in the document (see 12.6.4.6, "Launch actions").

=head2 URIActions [integer]
- (Optional) The number of URI actions found in the document (see 12.6.4.8, "URI actions").

=head2 MovieActions [integer]
- (Optional; deprecated in PDF 2.0) The number of movie actions found in the document (see 12.6.4.10, "Movie actions").

=head2 SoundActions [integer]
- (Optional; deprecated in PDF 2.0) The number of sound actions found in the document (see 12.6.4.9, "Sound actions").

=head2 HideAnnotationActions [integer]
- (Optional) The number of hide actions found in the document (see 12.6.4.11, "Hide actions").

=head2 GoToRemoteActions [integer]
- (Optional) The number of remote go-to actions found in the document (see 12.6.4.3, "Remote Go-To actions").

=head2 AlternateImages [integer]
- (Optional) The number of alternate images found in the document (see 8.9.5.4, "Alternate images")

=head2 ExternalStreams [integer]
- (Optional) The number of external streams found in the document.

=head2 TrueTypeFonts [integer]
- (Optional) The number of TrueType fonts found in the document (see 9.6.3, "TrueType fonts").

=head2 ExternalRefXobjects [integer]
- (Optional) The number of reference XObjects found in the document (see 8.10.4, "Reference XObjects").

=head2 ExternalOPIdicts [integer]
- (Optional; deprecated in PDF 2.0) The number of OPI dictionaries found in the document (see 14.11.7, "Open prepress interface (OPI)").

=head2 NonEmbeddedFonts [integer]
- (Optional) The number of non-embedded fonts found in the document (see 9.9, "Embedded font programs")

=head2 DevDepGS_OP [integer]
- (Optional) The number of references to the graphics state parameter OP found in the document (see "Table 57 — Entries in a graphics state parameter dictionary").

=head2 DevDepGS_HT [integer]
- (Optional) The number of references to the graphics state parameter HT found in the document (see "Table 57 — Entries in a graphics state parameter dictionary").

=head2 DevDepGS_TR [integer]
- (Optional) The number of references to the graphics state parameter TR found in the document (see "Table 57 — Entries in a graphics state parameter dictionary").

=head2 DevDepGS_UCR [integer]
- (Optional) The number of references to the graphics state parameter UCR found in the document (see "Table 57 — Entries in a graphics state parameter dictionary").

=head2 DevDepGS_BG [integer]
- (Optional) The number of references to the graphics state parameter BG found in the document (see "Table 57 — Entries in a graphics state parameter dictionary").

=head2 DevDepGS_FL [integer]
- (Optional) The number of references to the graphics state parameter FL found in the document (see "Table 57 — Entries in a graphics state parameter dictionary").

=head2 Annotations [integer]
- (Optional) The number of annotations found in the document (see 12.5, "Annotations").

=head2 OptionalContent [boolean]
- (Optional) true if optional content is found in the document (see 8.11, "Optional content").

=head2 Attestation [text string]
- (Optional) An attestation, created by the author of the document, explaining the presence of any of the other entries in this dictionary or the presence of any other content affecting the legal integrity of the document.

=end pod
