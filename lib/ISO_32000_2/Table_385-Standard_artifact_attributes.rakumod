use v6;
role ISO_32000_2::Table_385-Standard_artifact_attributes {
    method Type {...};
    method BBox {...};
    method Subtype {...};
}

=begin pod

=head1 Description

Table 385 — Standard artifact attributes

=head1 Methods (Entries)

=head2 Type [Name]
- (Optional) The type of artifact that this attribute describes; if present, is one of the names Pagination, Layout, Page or Inline (PDF 2.0).
NOTE Inline artifacts can be used to provide context in the logical structure to any artifact. This is similar to an inline structure element.

=head2 BBox [rectangle]
- (Optional) An array of four numbers in default user space units giving the coordinates of the left, bottom, right, and top edges, respectively, of the artifact’s bounding box (the rectangle that completely encloses its visible extent).

=head2 Subtype [Name]
- (Optional; PDF 1.7) The subtype of the artifact. This entry appears only when the Type entry has a value of Pagination or Inline. Valid values are Header, Footer, Watermark, PageNum (PDF 2.0), Bates (PDF 2.0), LineNum (PDF 2.0) and Redaction (PDF 2.0). Additional values may be specified for this entry, provided they comply with the naming conventions described in Annex E, "Extending PDF".

=end pod
