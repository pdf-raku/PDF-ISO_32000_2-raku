use v6;
role ISO_32000_2::Table_246-Entries_in_the_FDF_dictionary {
    method F {...};
    method ID {...};
    method Fields {...};
    method Status {...};
    method Pages {...};
    method Encoding {...};
    method Annots {...};
    method Differences {...};
    method Target {...};
    method EmbeddedFDFs {...};
    method JavaScript {...};
}

=begin pod

=head1 Description

Table 246 — Entries in the FDF dictionary

=head1 Methods (Entries)

=head2 F [file specification]
- (Optional) The source file or target file: the PDF document file that this FDF file was exported from or is intended to be imported into.

=head2 ID [array]
- (Optional) An array of two byte strings constituting a file identifier (see 14.4, "File identifiers") for the source or target file designated by F, taken from the ID entry in the file’s trailer dictionary (see 7.5.5, "File trailer").

=head2 Fields [array]
- (Optional) An array of FDF field dictionaries (see 12.7.8.3.2, "FDF fields" in 12.7.8.3, "FDF catalog") describing the root fields (those with no ancestors in the field hierarchy) that is exported or imported. This entry and the Pages entry does not both be present.

=head2 Status [PDFDocEncoded string]
- (Optional) A status string that is displayed indicating the result of an action, typically a submit-form action (see 12.7.6.2, "Submit-form action"). The string is encoded with PDFDocEncoding. This entry and the Pages entry does not both be present.

=head2 Pages [array]
- (Optional; PDF 1.3) An array of FDF page dictionaries (see 12.7.8.3.3, "FDF pages") describing pages that is added to a PDF target document. The Fields and Status entries is not present together with this entry.

=head2 Encoding [name]
- (Optional; PDF 1.3) The encoding that is used for any FDF field value or option (V or Opt in the field dictionary; see "Table 249 — Entries in an FDF field dictionary") or field name that is a string and does not begin with the Unicode prefix ZERO WIDTH NO-BREAK SPACE (U+FEFF).
Default value: PDFDocEncoding.
Other allowed values include Shift_JIS, BigFive, GBK, UHC, utf_8, utf_16

=head2 Annots [array]
- (Optional; PDF 1.3) An array of FDF annotation dictionaries (see 12.7.8.3.4, "FDF annotation dictionaries" in 12.7.8.3, "FDF catalog"). The array may include annotations of any of the standard types listed in "Table 171 — Annotation types" except Link, Movie, Widget, PrinterMark, Screen, and TrapNet.

=head2 Differences [stream]
- (Optional; PDF 1.4) A stream containing all the bytes in all incremental updates made to the underlying PDF document since it was opened (see 7.5.6, "Incremental updates"). If a submit-form action submitting the document to a remote server as FDF has its IncludeAppendSaves flag set (see 12.7.6.2, "Submit-form action"), the contents of this stream is included in the submission. This allows any digital signatures (see 12.8, "Digital signatures") to be transmitted to the server. An incremental update is automatically performed just before the submission takes place, in order to capture all changes made to the document.
The submission includes the full set of incremental updates back to the time the document was first opened, even if some of them may already have been included in intervening submissions.
Although a Fields or Annots entry (or both) may be present along with Differences, there is no requirement that their contents will be consistent with each other. In particular, if Differences contains a digital signature, only the values of the form fields given in the Differences stream is considered trustworthy under that signature.

=head2 Target [string]
- (Optional; PDF 1.4) The name of a browser frame in which the underlying PDF document is opened. This mimics the behaviour of the target attribute in HTML <href> tags.

=head2 EmbeddedFDFs [array]
- (Optional; PDF 1.4) An array of file specifications (see 7.11, "File specifications") representing other FDF files embedded within this one (7.11.4, "Embedded file streams").

=head2 JavaScript [dictionary]
- (Optional; PDF 1.4) An ECMAScript dictionary (see "Table 248 — Entries in the ECMAScript dictionary") defining document-level ECMAScript scripts.

=end pod
