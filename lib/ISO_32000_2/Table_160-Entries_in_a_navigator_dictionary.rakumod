use v6;
role ISO_32000_2::Table_160-Entries_in_a_navigator_dictionary {
    method Type {...};
    method Layout {...};
}

=begin pod

=head1 Description

Table 160 — Entries in a navigator dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes; if present, is Navigator for a navigator dictionary.

=head2 Layout [name or array of names]
- (Required; PDF 2.0) One or more names specifying the named layout of the navigator that is used. When multiple names are provided, an interactive PDF processor should present the first one it is capable of displaying in the order present in the array. One of the following names always be present, either singly or as the final entry in the array.
D Corresponding to the value of D in the View key in "Table 153 — Entries in a collection dictionary".
T Corresponding to the value of T in the View key in "Table 153 — Entries in a collection dictionary".
H Corresponding to the value of H in the View key in "Table 153 — Entries in a collection dictionary".
FilmStrip A layout which displays a strip of thumbnails, providing an index to the file attachments within the collection. The selected attachment is previewed alongside the index.
FreeForm A layout which places thumbnails of the file attachments within the collection randomly in the view.
Linear A layout which provides a large size preview of one file attachment in the collection and displays alongside the preview the metadata for the file attachment, including the name, description and other collection schema entries.
Tree A layout presenting the contents of the collection in a tree view, showing the folder structure and the files as leaf nodes of the tree, akin to a traditional file system folder view.

=end pod
