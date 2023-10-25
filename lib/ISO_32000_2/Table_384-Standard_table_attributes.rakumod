use v6;
role ISO_32000_2::Table_384-Standard_table_attributes {
    method RowSpan {...};
    method ColSpan {...};
    method Headers {...};
    method Scope {...};
    method Summary {...};
    method Short {...};
}

=begin pod

=head1 Description

Table 384 — Standard table attributes

=head1 Methods (Entries)

=head2 RowSpan [integer]
- (Optional; not inheritable) The number of rows in the enclosing table that is spanned by the cell.
The cell shall expand by adding rows in the block-progression direction specified by the table’s WritingMode attribute.
Default value: 1.
This entry is only have an effect for structure elements of type of TH or TD.

=head2 ColSpan [integer]
- (Optional; not inheritable) The number of columns in the enclosing table that is spanned by the cell.
The cell shall expand by adding columns in the inline-progression direction specified by the table’s WritingMode attribute.
Default value: 1.
This entry is only have an effect for structure elements of type of TH or TD.

=head2 Headers [array]
- (Optional; not inheritable) An array of byte strings, where each string is the element identifier (see the ID entry in "Table 355 — Entries in a structure element dictionary") for a TH structure element that is used as a header associated with this cell.
This entry is only have an effect for structure elements of type of TH or TD.
The order in which the entries in the Headers array are listed is row IDs followed by column IDs. The row and column IDs is ordered from most specific to most general.
If the scope for any cells with an ID listed in the Headers attribute of a cell cannot be determined by the default algorithm defined in 14.8.4.8.3, "Table structure types", those header cells specifies a Scope so that the header can be determined to be either a row header, a column header or both.
This attribute may apply to header cells (TH) as well as data cells (TD). Therefore, the headers associated with any cell is those in its Headers array plus those in the Headers array of any TH cells in that array, and so on recursively.

=head2 Scope [name]
- (Optional; not inheritable; PDF 1.5) A name whose value is one of the following: Row, Column, or Both.
This entry is only have an effect for structure elements of type of TH.
If a Scope is not specified for a TH structure element, then the assumed value for the Scope is determined as follows, taking into account the current value for WritingMode:
These assumptions are used by the algorithm following "Table 371 — Table standard structure types" for determining which headers are associated with a cell.

=head2 Summary [text string]
- (Optional; not inheritable; PDF 1.7) A summary of the table’s purpose and structure. This entry is only be used within Table structure elements (see Table 371 — Table standard structure types”. NOTE For use in non-visual rendering such as speech or braille. The Summary key was restored in this document (2020).

=head2 Short [text string]
- (Optional; not inheritable; PDF 2.0) Contains a short form of the content of a TH structure element’s content.
This entry is only have an effect for structure elements of type of TH.
EXAMPLE When accessed by means of a screen reader, for each table cell the applicable header cells are read to the user in order to allow that user to understand the content of the table cell. It can become cumbersome for a user to repeatedly have to listen to the full contents of a TH structure element. An option to have the short form of the content of the TH structure element read out aloud is sometimes preferred.

=end pod
