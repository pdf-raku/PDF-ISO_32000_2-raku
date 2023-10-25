use v6;
role ISO_32000_2::Table_176-Additional_entries_specific_to_a_link_annotation {
    method Subtype {...};
    method A {...};
    method Dest {...};
    method H {...};
    method PA {...};
    method QuadPoints {...};
    method BS {...};
}

=begin pod

=head1 Description

Table 176 — Additional entries specific to a link annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Link for a link annotation.

=head2 A [dictionary]
- (Optional; PDF 1.1) An action that is performed when the link annotation is activated (see 12.6, "Actions").

=head2 Dest [array, name or byte string]
- (Optional; not permitted if an A entry is present) A destination that is displayed when the annotation is activated (12.3.2, "Destinations").

=head2 H [name]
- (Optional; PDF 1.2) The annotation’s highlighting mode, the visual effect that is used when the mouse button is pressed or held down inside its active area:
N (None) No highlighting.
I (Invert) Invert the contents of the annotation rectangle.
O (Outline) Invert the annotation’s border.
P (Push) Display the annotation as if it were being pushed below the surface of the page.
Default value: I.

=head2 PA [dictionary]
- (Optional; PDF 1.3) A URI action (see 12.6.4.8, "URI actions") formerly associated with this annotation. When a PDF processor changes an annotation from a URI (12.6.4.8, "URI actions") to a go-to action (12.6.4.2, "Go-To actions"), it may use this entry to save the data from the original URI action so that it can be changed back in case the target page for the go-to action is subsequently deleted.

=head2 QuadPoints [array]
- (Optional; PDF 1.6) An array of 8×𝑛 numbers specifying the coordinates of n quadrilaterals in default user space that comprise the region in which the link is activated. The coordinates for each quadrilateral are given in the order: 𝑥1 𝑦1 𝑥2 𝑦2 𝑥3 𝑦3 𝑥4 𝑦4
specifying the four vertices of the quadrilateral in counterclockwise order. For orientation purposes, such as when applying an underline border style, the bottom of a quadrilateral is the line formed by (x1, y1) and (x2, y2).
If this entry is not present, or the PDF processor does not recognise it, or if any coordinates in the QuadPoints array lie outside the region specified by Rect then the activation region for the link annotation is defined by its Rect entry.
NOTE The last paragraph above was clarified in this document (2020).

=head2 BS [dictionary]
- (Optional; PDF 1.6) A border style dictionary (see "Table 168 — Entries in a border style dictionary") specifying the line width and dash pattern that is used in drawing the annotation’s border.

=end pod
