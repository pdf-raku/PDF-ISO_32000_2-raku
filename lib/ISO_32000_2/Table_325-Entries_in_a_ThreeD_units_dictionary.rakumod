use v6;
role ISO_32000_2::Table_325-Entries_in_a_ThreeD_units_dictionary {
    method TSm {...};
    method TSn {...};
    method TU {...};
    method USm {...};
    method USn {...};
    method UU {...};
    method DSm {...};
    method DSn {...};
    method DU {...};
}

=begin pod

=head1 Description

Table 325 — Entries in a 3D units dictionary

=head1 Methods (Entries)

=head2 TSm [number]
- (Optional; PDF 2.0) The creation time units m scale value. If omitted, TSm defaults to 1.0; if included, TU exists.

=head2 TSn [number]
- (Optional; PDF 2.0) The creation time units n scale value. If omitted, TSn defaults to 1.0; if included, TU exists.

=head2 TU [text string]
- (Optional; PDF 2.0) The creation time units value. A text string specifying a label for displaying the units represented by this dictionary in a user interface.
NOTE 1 It is recommended that the label use a universally recognised abbreviation.

=head2 USm [number]
- (Optional; PDF 2.0) The user defined units m scale value. If omitted, USm defaults to 1.0; if included, UU exists.

=head2 USn [number]
- (Optional; PDF 2.0) The user defined units n scale value. If omitted, USn defaults to 1.0; if included, UU exists.

=head2 UU [text string]
- (Optional; PDF 2.0) The user override units value. A text string specifying a label for displaying the units represented by this dictionary in a user interface.
NOTE 2 It is recommended that the label use a universally recognised abbreviation.

=head2 DSm [number]
- (Optional; PDF 2.0) The display units m scale value. If omitted, DSm defaults to 1.0; if included, DU exists.

=head2 DSn [number]
- (Optional; PDF 2.0) The display units n scale value. If omitted, DSn defaults to 1.0; if included, DU exists.

=head2 DU [text string]
- (Optional; PDF 2.0) The display units value. A text string specifying a label for displaying the units represented by this dictionary in a user interface.
NOTE 3 It is recommended that the label use a universally recognised abbreviation.

=end pod
