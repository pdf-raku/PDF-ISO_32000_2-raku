use v6;
role ISO_32000_2::Table_F1-Entries_in_the_linearization_parameter_dictionary {
    method Linearized {...};
    method L {...};
    method H {...};
    method O {...};
    method E {...};
    method N {...};
    method T {...};
    method P {...};
}

=begin pod

=head1 Description

Table F.1 — Entries in the linearization parameter dictionary

=head1 Methods (Entries)

=head2 Linearized [number]
- (Required) A version identification for the linearized format.

=head2 L [integer]
- (Required) The length of the entire PDF file in bytes. It is exactly equal to the actual length of the PDF file. A mismatch indicates that the file is not linearized and is treated as ordinary PDF file, ignoring linearization information. (If the mismatch resulted from appending an update, the linearization information may still be correct but requires validation; see G.7, "Accessing an updated file" for details.)

=head2 H [array]
- (Required) An array of two or four integers, [offset1 length1] or [offset1 length1 offset2 length2]. offset1 is the offset of the primary hint stream from the beginning of the PDF file. (This is the beginning of the stream object, not the beginning of the stream data.) length1 is the length of this stream, including stream object overhead.
If the value of the primary hint stream dictionary’s Length entry is an indirect reference, the object it refers to shall immediately follow the stream object, and length1 also includes the length of the indirect length object, including object overhead.
If there is an overflow hint stream, offset2 and length2 specifies its offset and length.

=head2 O [integer]
- (Required) The object number of the first page’s page object.

=head2 E [integer]
- (Required) The offset of the end of the first page (the end of Example 6 in F.3, "Linearized PDF document structure"), relative to the beginning of the PDF file.

=head2 N [integer]
- (Required) The number of pages in the document.

=head2 T [integer]
- (Required) In documents that use standard main cross-reference tables (including hybrid-reference files; see 7.5.8.4, "Compatibility with applications that do not support compressed reference streams"), this entry represents the offset of the white-space character preceding the first entry of the main cross-reference table (the entry for object number 0), relative to the beginning of the PDF file. Note that this differs from the Prev entry in the first-page trailer, which gives the location of the xref line that precedes the table.
(PDF 1.5) Documents that use cross-reference streams exclusively (see 7.5.8, "Cross-reference streams"), this entry represents the offset of the main cross-reference stream object in the PDF file.

=head2 P [integer]
- (Optional) The page number of the first page; see F.3.4, "First-page cross-reference table and trailer (Part 3)". Default value: 0.

=end pod
