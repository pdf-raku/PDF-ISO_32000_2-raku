use v6;
role ISO_32000_2::Table_408-Entries_in_a_DPartRoot_dictionary {
    method Type {...};
    method DPartRootNode {...};
    method RecordLevel {...};
    method NodeNameList {...};
}

=begin pod

=head1 Description

Table 408 — Entries in a DPartRoot dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) If present, it has the value DPartRoot to identify the dictionary as a DPartRoot dictionary.

=head2 DPartRootNode [dictionary]
- (Required; PDF 2.0) Shall be an indirect reference to the DPart dictionary that is the root node of the document part tree structure.

=head2 RecordLevel [integer]
- (Optional; PDF 2.0) This attribute may be used when a single PDF file encodes multiple documents. It identifies the zero based level of the document part hierarchy where each DPart node of that level corresponds to a component or hierarchy of components.

=head2 NodeNameList [array]
- (Optional; PDF 2.0) An array of names where each name entry corresponds to a DPart node level of the document part hierarchy beginning with the DPart dictionary identified by the value of the DPartRoot dictionary's DPartRootNode key.
If present, the number of entries present in this array is equal to the number of DPart node levels in the document part hierarchy.
Each name in this array conforms to the rules for an XML Name token.

=end pod
