use v6;
role ISO_32000_2::Table_44-Additional_entries_in_an_embedded_file_stream_dictionary {
    method Type {...};
    method Subtype {...};
    method Params {...};
}

=begin pod

=head1 Description

Table 44 — Additional entries in an embedded file stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is EmbeddedFile for an embedded file stream.

=head2 Subtype [name]
- (Optional, required in the case of an embedded file stream used as an associated file) The subtype of the embedded file. The value of this entry conforms to the MIME media type names defined in Internet RFC 2046, with the provision that characters not permitted in names uses the 2-character hexadecimal code format described in 7.3.5, "Name objects".
NOTE The media type for PDF is defined by Internet RFC 8118.

=head2 Params [dictionary]
- (Optional, required in the case of an embedded file stream used as an associated file) An embedded file parameter dictionary that contains additional file-specific information (see "Table 45 — Entries in an embedded file parameter dictionary").

=end pod
