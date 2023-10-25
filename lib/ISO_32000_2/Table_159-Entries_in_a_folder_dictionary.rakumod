use v6;
role ISO_32000_2::Table_159-Entries_in_a_folder_dictionary {
    method Type {...};
    method ID {...};
    method Name {...};
    method Parent {...};
    method Child {...};
    method Next {...};
    method CI {...};
    method Desc {...};
    method CreationDate {...};
    method ModDate {...};
    method Thumb {...};
    method Free {...};
}

=begin pod

=head1 Description

Table 159 — Entries in a folder dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes; if present, is Folder for a folder dictionary.

=head2 ID [integer]
- (Required; PDF 2.0) A non-negative integer value representing the unique folder identification number. Two folders, in the same PDF document, does not share the same ID value.
The folder ID value appears as part of the name tree key of any file associated with this folder. A detailed description of the association between folder and files can be found after this table.

=head2 Name [text string]
- (Required; PDF 2.0) A file name representing the name of the folder. Two sibling folders does not share the same name following case normalization.
NOTE Descriptions of file name and case normalization follow this table.

=head2 Parent [dictionary]
- (Required for child folders; PDF 2.0) An indirect reference to the parent folder of this folder.
This entry is absent for a root folder.

=head2 Child [dictionary]
- (Required if the folder has any descendents; PDF 2.0) An indirect reference to the first child folder of this folder.

=head2 Next [dictionary]
- (Required for all but the last item at each level; PDF 2.0) An indirect reference to the next sibling folder at this level.
Siblings is ordered according to the collection Sort key ("Table 153 — Entries in a collection dictionary") or by folder name if no collection Sort key is present.

=head2 CI [dictionary]
- (Optional; PDF 2.0) The collection item dictionary. Beginning with PDF 1.7, a collection item dictionary contains the data described by the collection schema dictionary for a particular file in a collection (see 12.3.5, "Collections"). "Table 46 — Entries in a collection item dictionary" describes the entries in a collection item dictionary.

=head2 Desc [text string]
- (Optional; PDF 2.0) A text description associated with this folder.

=head2 CreationDate [date]
- (Optional; PDF 2.0) The date the folder was first created.

=head2 ModDate [date]
- (Optional; PDF 2.0) The date of the most recent change to immediate child files or folders of this folder.

=head2 Thumb [stream]
- (Optional; PDF 2.0) A stream object defining the thumbnail image for the folder See 12.3.4, "Thumbnail images".

=head2 Free [array]
- (Optional; only used by root folder; PDF 2.0) An array containing ID values that are not currently in use by the folder structure. The array shall contains zero or more pairs of numbers, a low value followed by a high value. Each pair represents an endpoint-inclusive range of values that are available for use when a new folder is added. Each low value is less than or equal to its corresponding high value.

=end pod
