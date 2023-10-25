use v6;
role ISO_32000_2::Table_349-Entries_in_the_document_information_dictionary {
    method Title {...};
    method Author {...};
    method Subject {...};
    method Keywords {...};
    method Creator {...};
    method Producer {...};
    method CreationDate {...};
    method ModDate {...};
    method Trapped {...};
}

=begin pod

=head1 Description

Table 349 — Entries in the document information dictionary

=head1 Methods (Entries)

=head2 Title [text string]
- (Optional; PDF 1.1; deprecated in PDF 2.0) The document’s title.
NOTE 1 The dc:title entry in the document’s metadata stream can be used to represent the document’s title.

=head2 Author [text string]
- (Optional; deprecated in PDF 2.0) The name of the person who created the document.
NOTE 2 The dc:creator entry in the document’s metadata stream can be used to represent the person or persons who created the document. This note was corrected in this document (2020).

=head2 Subject [text string]
- (Optional; PDF 1.1; deprecated in PDF 2.0) The subject of the document.
NOTE 3 The dc:description entry in the document’s metadata stream can be used to represent the subject the document.

=head2 Keywords [text string]
- (Optional; PDF 1.1; deprecated in PDF 2.0) Keywords associated with the document.
NOTE 4 The pdf:Keywords entry in the document’s metadata stream can be used to represent the keywords for the document.

=head2 Creator [text string]
- (Optional; deprecated in PDF 2.0) If the document was converted to PDF from another format, the name of the PDF processor that created the original document from which it was converted.
NOTE 5 The xmp:CreatorTool entry in the document’s metadata stream can be used to represent the creation tool of the document.

=head2 Producer [text string]
- (Optional; deprecated in PDF 2.0) If the document was converted to PDF from another format, the name of the PDF processor that converted it to PDF.
NOTE 6 The pdf:Producer entry in the document’s metadata stream can be used to represent the tool that saved the document as a PDF.

=head2 CreationDate [date]
- (Optional) The date and time the document was created, in human-readable form (see 7.9.4, "Dates").
NOTE 7 The xmp:CreateDate entry in the document’s metadata stream can be used to represent document’s creation date and time.

=head2 ModDate [date]
- (Required if PieceInfo is present in the document catalog dictionary; otherwise optional; PDF 1.1) The date and time the document was most recently modified, in human-readable form (see 7.9.4, "Dates").
NOTE 8 The xmp:ModifyDate entry in the document’s metadata stream can be used to represent the date and time the document was most recently modified.

=head2 Trapped [name]
- (Optional; PDF 1.3; deprecated in PDF 2.0) A name object indicating whether the document has been modified to include trapping information (see 14.11.6, "Trapping support"):
True The document has been fully trapped; no further trapping is needed. This is the name True, not the boolean value true.
False The document has not yet been trapped. This is the name False, not the boolean value false.
Unknown Either it is unknown whether the document has been trapped or it has been partly but not yet fully trapped; some additional trapping may still be needed.
Default value: Unknown.
NOTE 9 The value of this entry can be set automatically by the software creating the document’s trapping information, or it can be known only to a human operator and entered manually.
NOTE 10 The pdf:Trapped entry in the document’s metadata stream can be used to represent the trapping information for the document.

=end pod
