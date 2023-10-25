use v6;
role ISO_32000_2::Table_158-Entries_in_a_collection_split_dictionary {
    method Type {...};
    method Direction {...};
    method Position {...};
}

=begin pod

=head1 Description

Table 158 — Entries in a collection split dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes; if present, is CollectionSplit for a collection split dictionary.

=head2 Direction [name]
- (Optional; PDF 2.0) The orientation of the splitter bar. The following values are valid:
H indicates that the window is split horizontally
V indicates that the window is split vertically.
N indicates that the window is not split. The entire window region is dedicated to the file navigation view.

=head2 Position [number]
- (Optional; PDF 2.0) The initial position of the splitter bar, specified as a percentage of the available window area. Values shall range from 0 to 100. The entry is ignored if Direction is set to N.

=end pod
