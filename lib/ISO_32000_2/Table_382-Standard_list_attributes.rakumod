use v6;
role ISO_32000_2::Table_382-Standard_list_attributes {
    method ListNumbering {...};
    method ContinuedList {...};
    method ContinuedFrom {...};
}

=begin pod

=head1 Description

Table 382 — Standard list attributes

=head1 Methods (Entries)

=head2 ListNumbering [name]
- (Optional; inheritable) The numbering system used to generate the content of the Lbl (Label) elements in a numbered list, or the type of symbol in the content of the Lbl (Label) elements used to identify list items in an unnumbered list (see "Table 368 — General inline level structure types"). The value of the ListNumbering is one of the following, and is applied as described here.
None No numbering system; Lbl elements (if present) contain arbitrary text not subject to any numbering scheme
Unordered (PDF 2.0) Unordered list with unspecified bullets
Description (PDF 2.0) A list of terms for corresponding definitions
NOTE The Description value was added in this document (2020).
Disc Solid circular bullet
Circle Open circular bullet
Square Solid square
Ordered (PDF 2.0) Ordered lists with unspecified numbering
Decimal Decimal Arabic numerals (1–9, 10–99, …)
UpperRoman Uppercase Roman numerals (I, II, III, IV, …)
LowerRoman Lowercase Roman numerals (i, ii, iii, iv, …)
UpperAlpha Uppercase letters (A, B, C, ..)
LowerAlpha Lowercase letters (a, b, c, …)
Default value: None.
A list is an unordered list unless the ListNumbering attribute is present with one of the following values: Ordered, Decimal, UpperRoman, LowerRoman, UpperAlpha or LowerAlpha, in which case the list is an ordered list.
The alphabet used for UpperAlpha and LowerAlpha is determined by the prevailing Lang entry (see 14.9.2, "Natural language specification").

=head2 ContinuedList [boolean]
- (Optional; PDF 2.0) A flag specifying whether the list is a continuation of a previous list in the structure tree (true), or not (false). Default value: false.
If the ContinuedFrom attribute is not present, the continuation is from the preceding list at the same level in the structure hierarchy.

=head2 ContinuedFrom [ID (byte string)]
- (Optional; PDF 2.0) The ID (see “Table 355 — Entries in a structure element dictionary") of the list for which this list is a continuation.

=end pod
