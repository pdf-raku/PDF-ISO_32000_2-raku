use v6;
role ISO_32000_2::Table_15-Entries_in_the_file_trailer_dictionary {
    method Size {...};
    method Prev {...};
    method Root {...};
    method Encrypt {...};
    method Info {...};
    method ID {...};
}

=begin pod

=head1 Description

Table 15 — Entries in the file trailer dictionary

=head1 Methods (Entries)

=head2 Size [integer]
- (Required; is not an indirect reference) The total number of entries in the PDF file’s cross-reference table, as defined by the combination of the original section and all update sections. Equivalently, this value is 1 greater than the highest object number defined in the PDF file.
Any object in a cross-reference section whose number is greater than this value is ignored and defined to be missing by a PDF reader.

=head2 Prev [integer]
- (Optional, present only if the file has more than one cross-reference section; is a direct object) The byte offset from the beginning of the PDF file to the beginning of the previous cross-reference stream.

=head2 Root [dictionary]
- (Required; is an indirect reference) The catalog dictionary for the PDF file (see 7.7.2, "Document catalog dictionary").

=head2 Encrypt [dictionary]
- (Required if document is encrypted; PDF 1.1) The PDF file’s encryption dictionary (see 7.6, "Encryption").

=head2 Info [dictionary]
- (Optional; is an indirect reference) The PDF file’s information dictionary. As described in 14.3.3, "Document information dictionary", this method for specifying document metadata has been deprecated in PDF 2.0 and should therefore only be used to encode information that is stated as required elsewhere in this document.
NOTE 1 The ModDate key within the Info dictionary is required if Page-Piece dictionaries (see 14.5, "Page-piece dictionaries") are used.

=head2 ID [array]
- (Required in PDF 2.0 and later, or if an Encrypt entry is present; optional otherwise; PDF 1.1) An array of two byte-strings constituting a PDF file identifier (See 14.4, "File identifiers") for the PDF file. Each PDF file identifier byte-string has a minimum length of 16 bytes. If there is an Encrypt entry, this array and the two byte-strings is direct objects and is unencrypted.
NOTE 2 Because the ID entries are not encrypted, the ID key can be checked to assure that the correct PDF file is being accessed without decrypting the PDF file. The restrictions that the objects all be direct objects and not be encrypted ensure this.
NOTE 3 Although this entry is optional prior to PDF 2.0, its absence can prevent the PDF file from functioning in some workflows that depend on PDF files being uniquely identified.
NOTE 4 The values of the ID strings are used as input to the encryption algorithm. If these strings were indirect, or if the ID array were indirect, these strings would be encrypted when written. This would result in a circular condition for a PDF reader: the ID strings need be decrypted in order to use them to decrypt strings, including the ID strings themselves. The preceding restriction prevents this circular condition.

=end pod
