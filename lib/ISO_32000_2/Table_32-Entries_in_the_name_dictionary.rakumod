use v6;
role ISO_32000_2::Table_32-Entries_in_the_name_dictionary {
    method Dests {...};
    method AP {...};
    method JavaScript {...};
    method Pages {...};
    method Templates {...};
    method IDS {...};
    method URLS {...};
    method EmbeddedFiles {...};
    method AlternatePresentations {...};
    method Renditions {...};
}

=begin pod

=head1 Description

Table 32 — Entries in the name dictionary

=head1 Methods (Entries)

=head2 Dests [name tree]
- (Optional; PDF 1.2) A name tree mapping name strings to destinations (see 12.3.2.4, "Named destinations").

=head2 AP [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to annotation appearance streams (see 12.5.5, "Appearance streams").

=head2 JavaScript [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to document-level ECMAScript actions (see 12.6.4.17, "ECMAScript actions").

=head2 Pages [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to visible pages for use in interactive forms (see 12.7.7, "Named pages").

=head2 Templates [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to invisible (template) pages for use in interactive forms (see 12.7.7, "Named pages").

=head2 IDS [name tree]
- (Optional; PDF 1.3) A name tree mapping digital identifiers to Web.
Capture content sets (see 14.10.4, "Content sets").

=head2 URLS [name tree]
- (Optional; PDF 1.3) A name tree mapping uniform resource locators.
(URLs) to Web Capture content sets (see 14.10.4, "Content sets").

=head2 EmbeddedFiles [name tree]
- (Optional; PDF 1.4) A name tree mapping name strings to file specifications for embedded file streams (see 7.11.4, "Embedded file streams"). All File Specification dictionaries referenced from this name tree contains an EF key whose value is a dictionary which contains either an F or UF key whose value is an embedded file stream.
(PDF 2.0) For unencrypted wrapper documents for an encrypted payload document (see 7.6.7, "Unencrypted wrapper document") the name strings provided in this tree does not contain or be derived from the encrypted payload document’s actual file name. This is to avoid potential disclosure of sensitive information in the original filename. The name string matches the value of F or UF in the referenced File Specification dictionary.

=head2 AlternatePresentations [name tree]
- (Optional; PDF 1.4; deprecated in PDF 2.0) A name tree mapping name strings to alternate presentations (see 13.5, "Alternate presentations").

=head2 Renditions [name tree]
- (Optional; PDF 1.5) A name tree mapping name strings (which has Unicode encoding) to rendition objects (see 13.2.3, "Renditions").

=end pod
