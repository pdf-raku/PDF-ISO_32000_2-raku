use v6;
role ISO_32000_2::Table_45-Entries_in_an_embedded_file_parameter_dictionary {
    method Size {...};
    method CreationDate {...};
    method ModDate {...};
    method Mac {...};
    method CheckSum {...};
}

=begin pod

=head1 Description

Table 45 — Entries in an embedded file parameter dictionary

=head1 Methods (Entries)

=head2 Size [integer]
- (Optional) The size of the uncompressed embedded file, in bytes. See "Table 155 — Entries in a collection field dictionary".

=head2 CreationDate [date]
- (Optional) The date and time when the embedded file was created. See "Table 155 — Entries in a collection field dictionary".

=head2 ModDate [date]
- (Optional, required in the case of an embedded file stream used as an associated file) The date and time when the embedded file was last modified. See "Table 155 — Entries in a collection field dictionary".

=head2 Mac [dictionary]
- (Optional; deprecated in PDF 2.0) A subdictionary containing additional information specific to Mac OS files.

=head2 CheckSum [string]
- (Optional) A 16-byte string that is the checksum of the bytes of the uncompressed embedded file. The checksum is calculated by applying the standard MD5 message-digest algorithm (defined in Internet RFC 1321) to the bytes of the embedded file stream.
NOTE This is strictly a checksum, and is not used for security purposes.

=end pod
