use v6;
role ISO_32000_2::Table_182-Additional_entries_specific_to_text_markup_annotations {
    method Subtype {...};
    method QuadPoints {...};
}

=begin pod

=head1 Description

Table 182 — Additional entries specific to text markup annotations

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Highlight, Underline, Squiggly, or StrikeOut for a highlight, underline, squiggly-underline, or strikeout annotation, respectively.

=head2 QuadPoints [array]
- (Required) An array of 8×𝑛 numbers specifying the coordinates of n quadrilaterals in default user space. Each quadrilateral shall encompasses a word or group of contiguous words in the text underlying the annotation. The coordinates for each quadrilateral is given in the order: 𝑥1 𝑦1 𝑥2 𝑦2 𝑥3 𝑦3 𝑥4 𝑦4
specifying the quadrilateral’s four vertices in counterclockwise order (see "Figure 84 — QuadPoints specification"). The text is oriented with respect to the edge connecting points (x1, y1) and (x2, y2).

=end pod
