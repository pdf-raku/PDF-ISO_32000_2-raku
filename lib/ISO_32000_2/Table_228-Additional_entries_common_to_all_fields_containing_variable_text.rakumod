use v6;
role ISO_32000_2::Table_228-Additional_entries_common_to_all_fields_containing_variable_text {
    method DA {...};
    method Q {...};
    method DS {...};
    method RV {...};
}

=begin pod

=head1 Description

Table 228 — Additional entries common to all fields containing variable text

=head1 Methods (Entries)

=head2 DA [string]
- (Required; inheritable) The default appearance string containing a sequence of valid page-content graphics or text state operators that define such properties as the field’s text size and colour.

=head2 Q [integer]
- (Optional; inheritable) A code specifying the form of quadding (justification) that is used in displaying the text:
0 Left-justified
1 Centred
2 Right-justified
Default value: 0 (left-justified).

=head2 DS [text string]
- (Optional; PDF 1.5) A default style string, as described in Adobe XML Architecture, XML Forms Architecture (XFA) Specification, version 3.3.

=head2 RV [text string or text stream]
- (Optional; PDF 1.5) A rich text string, as described in Adobe XML Architecture, XML Forms Architecture (XFA) Specification, version 3.3.

=end pod
