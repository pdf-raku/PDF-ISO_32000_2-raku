use v6;
role ISO_32000_2::Table_363-Property_list_entries_for_artifacts {
    method Type {...};
    method BBox {...};
    method Attached {...};
    method Subtype {...};
}

=begin pod

=head1 Description

Table 363 — Property list entries for artifacts

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of artifact that this property list describes; if present, is one of the names Pagination, Layout, Page or Background.

=head2 BBox [rectangle]
- (Optional) An array of four numbers in default user space units giving the coordinates of the left, bottom, right, and top edges, respectively, of the artifact’s bounding box (the rectangle that completely encloses its visible extent).

=head2 Attached [array]
- 

=head2 Subtype [name]
- (Optional; PDF 1.7) The subtype of the artifact. This entry appears only when the Type entry has a value of Pagination. Valid values are Header, Footer, Watermark, PageNum (PDF 2.0), LineNum (PDF 2.0), Redaction (PDF 2.0) and Bates (PDF 2.0). Additional values may be specified for this entry, provided they comply with the naming conventions described in Annex E, "Extending PDF".

=end pod
