use v6;
role ISO_32000_2::Table_17-Additional_entries_specific_to_a_cross-reference_stream_dictionary {
    method Type {...};
    method Size {...};
    method Index {...};
    method Prev {...};
    method W {...};
}

=begin pod

=head1 Description

Table 17 — Additional entries specific to a cross-reference stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is XRef for a cross-reference stream.

=head2 Size [integer]
- (Required) The number one greater than the highest object number used in this section or in any section for which this is an update. It is equivalent to the Size entry in a trailer dictionary.

=head2 Index [array]
- (Optional) An array containing a pair of integers for each subsection in this section. The first integer is the first object number in the subsection; the second integer is the number of entries in the subsection
The array is sorted in ascending order by object number. Subsections cannot overlap; an object number has no more than one entry in a section.
Default value: [0 Size].

=head2 Prev [integer]
- (Required, if any cross reference streams are already present in the file) The byte offset from the beginning of the PDF file to the beginning of the previous cross-reference stream. The value is meaningful if the PDF file has more than one cross-reference stream. It is not meaningful in hybrid-reference files; see 7.5.8.4, "Compatibility with applications that do not support compressed reference streams". This entry has the same function as the Prev entry in the trailer dictionary ("Table 15 — Entries in the file trailer dictionary").

=head2 W [array]
- (Required) An array of integers representing the size of the fields in a single cross-reference entry. "Table 18 — Entries in a cross-reference stream" describes the types of entries and their fields. For PDF 1.5, W always contains three integers; the value of each integer is the number of bytes (in the decoded stream) of the corresponding field.
EXAMPLE [1 2 1] means that the fields are one byte, two bytes, and one byte, respectively.
A value of zero for an element in the W array indicates that the corresponding field is not present in the stream, and the default value is used, if there is one. A value of zero is not used for the second element of the array. If the first element is zero, the type field is not present, and defaults to Type 1.
The sum of the items is the total length of each entry; it can be used with the Index array to determine the starting position of each subsection.
Different cross-reference streams in a PDF file may use different values for W.

=end pod
