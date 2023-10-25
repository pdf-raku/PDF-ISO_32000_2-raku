use v6;
role ISO_32000_2::Table_153-Entries_in_a_collection_dictionary {
    method Type {...};
    method Schema {...};
    method D {...};
    method View {...};
    method Navigator {...};
    method Colors {...};
    method Sort {...};
    method Folders {...};
    method Split {...};
}

=begin pod

=head1 Description

Table 153 — Entries in a collection dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Collection for a collection dictionary.

=head2 Schema [dictionary]
- (Optional) A collection schema dictionary (see "Table 154 — Entries in a collection schema dictionary"). If absent, the interactive PDF processor may choose useful defaults that are known to exist in a file specification dictionary, such as the file name, file size, and modified date.

=head2 D [byte string]
- (Optional) A string that identifies an entry in the EmbeddedFiles name tree, determining the document that is initially presented in the user interface. If the D entry is missing or is not a valid byte string, the initial document is the one that contains the collection dictionary. If the D entry is a valid byte string that does not match any file in the EmbeddedFiles name tree, the interactive PDF processor shall select the first item from the list of files to display in its user interface; if no files exist in the name tree, the interactive PDF processor displays an empty preview window.
(PDF 2.0) For unencrypted wrapper documents for an encrypted payload document (see 7.6.7, "Unencrypted wrapper document") the D entry is required, and identifies the encrypted payload entry in the EmbeddedFiles name tree.

=head2 View [name]
- (Optional) The initial view. The following values are valid:
D The collection view is presented in details mode, with all information in the Schema dictionary presented in a multi-column format. This mode provides the most information to the user.
T The collection view is presented in tile mode, with each file in the collection denoted by a small icon and a subset of information from the Schema dictionary. This mode provides top-level information about the file attachments to the user.
H The collection view is initially hidden. The interactive PDF processor provides means for the user to view the collection by some explicit action. The PDF processor displays the document specified by the D entry.
NOTE How the PDF processor chooses to display the collection is implementation specific.
C (PDF 2.0, valid only when Navigator is present) The collection view is presented by the navigator specified by the Navigator entry.
Default value: D
(PDF 2.0) For unencrypted wrapper documents for an encrypted payload document (see 7.6.7, "Unencrypted wrapper document") the View entry is required, and has a value of H.

=head2 Navigator [dictionary]
- (Required if the value of View is C; PDF 2.0) An indirect reference to the navigator dictionary that describes the navigator that provides the collection view. See "Table 160 — Entries in a navigator dictionary".

=head2 Colors [dictionary]
- (Optional; PDF 2.0) A collection colors dictionary specifying a suggested set of colours for use by a collection layout. See "Table 157 — Entries in a collection colors dictionary".
NOTE It is recommended that a layout use the colours provided.

=head2 Sort [dictionary]
- (Optional) A collection sort dictionary, which specifies the order in which items in the collection is sorted in the user interface (see "Table 156 — Entries in a collection sort dictionary").

=head2 Folders [dictionary]
- (Required if the collection has folders; PDF 2.0) An indirect reference to a folder dictionary that is the single common ancestor of all other folders in a portable collection. See "Table 159 — Entries in a folder dictionary".

=head2 Split [dictionary]
- (Optional; PDF 2.0) A collection split dictionary that specifies the orientation of the splitter bar in the user interface provided by the interactive PDF processor. See "Table 158 — Entries in a collection split dictionary".
If Split is not present, the preferred orientation is determined by the value of the View key. A value of D (or no value) indicates a horizontal orientation, while a value of T indicates a vertical orientation. No splitter is used if the View key has a value of H or C.

=end pod
