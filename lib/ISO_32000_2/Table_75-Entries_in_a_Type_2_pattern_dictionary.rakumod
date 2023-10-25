use v6;
role ISO_32000_2::Table_75-Entries_in_a_Type_2_pattern_dictionary {
    method Type {...};
    method PatternType {...};
    method Shading {...};
    method Matrix {...};
    method ExtGState {...};
}

=begin pod

=head1 Description

Table 75 — Entries in a Type 2 pattern dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Pattern for a pattern dictionary.

=head2 PatternType [integer]
- (Required) A code identifying the type of pattern that this dictionary describes; is 2 for a shading pattern.

=head2 Shading [dictionary or stream]
- (Required) A shading object (see below) defining the shading pattern’s gradient fill. The contents of the dictionary consists of the entries in "Table 77 — Entries common to all shading dictionaries" and those in one of Table 78 to Table 83.

=head2 Matrix [array]
- (Optional) An array of six numbers specifying the pattern matrix (see 8.7.2, "General properties of patterns"). Default value: the identity matrix [1 0 0 1 0 0].

=head2 ExtGState [dictionary]
- (Optional) A graphics state parameter dictionary (see 8.4.5, "Graphics state parameter dictionaries") containing graphics state parameters to be put into effect temporarily while the shading pattern is painted. Any parameters that are not so specified is inherited from the graphics state that was in effect at the beginning of the pattern’s parent content stream, and as modified by clause 11.6.7, "Patterns and transparency".

=end pod
