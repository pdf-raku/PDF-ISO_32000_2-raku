use v6;
role ISO_32000_2::Table_409-Entries_in_a_DPart_dictionary {
    method Type {...};
    method Parent {...};
    method DParts {...};
    method Start {...};
    method End {...};
    method DPM {...};
    method AF {...};
    method Metadata {...};
}

=begin pod

=head1 Description

Table 409 — Entries in a DPart dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) If present, it has the value DPart to identify the dictionary as a DPart dictionary.

=head2 Parent [dictionary]
- (Required; PDF 2.0) If this DPart dictionary is referenced from the DPartRootNode key of the DPartRoot dictionary, then the value of this Parent key is an indirect reference to the DPartRoot dictionary. In all other cases the value of this Parent key is an indirect reference to the DPart dictionary that is its immediate ancestor in the hierarchy.

=head2 DParts [array]
- (Shall not be present if a Start key is present; PDF 2.0) An array of arrays. Each element in the array is an array of indirect references to immediate descendant DPart dictionaries. The array is not empty.

=head2 Start [dictionary]
- (Shall not be present if a DParts key is present; is an indirect reference; PDF 2.0) If present, the Start key is an indirect reference to the page object that defines the first page of the range of pages belonging to this DPart dictionary.

=head2 End [dictionary]
- (Required if there is a Start key and the page range has more than one page, not present otherwise; is an indirect reference; PDF 2.0) If present, the End key is an indirect reference to the page object that defines the last PDF page of the range of pages belonging to this DPart dictionary.

=head2 DPM [dictionary]
- (Optional; PDF 2.0) If present specifies a document part metadata dictionary.
NOTE See 14.12.4.2, "Document part metadata" for a description of the use of DPM dictionaries for specifying DPM.

=head2 AF [array of dictionaries]
- (Optional; PDF 2.0) An array of one or more file specification dictionaries (7.11.3, "File specification dictionaries") which denote the associated files for this document part (DPart). See 14.13, "Associated files" and 14.13.8, "Associated files linked to DParts".

=head2 Metadata [stream]
- (Optional; PDF 2.0; is an indirect reference) A metadata stream that contains metadata for this document part (see 14.3.2, "Metadata streams").

=end pod
