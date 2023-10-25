use v6;
role ISO_32000_2::Table_326-Entries_in_a_ThreeD_measurement-markup_dictionary_common_to_all_markup_subtypes {
    method Type {...};
    method Subtype {...};
    method TRL {...};
}

=begin pod

=head1 Description

Table 326 — Entries in a 3D measurement/markup dictionary common to all markup subtypes

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes; if present, it is 3DMeasure for a 3D measurement dictionary.

=head2 Subtype [name]
- (Required; PDF 2.0) A name specifying the measurement type for this measurement which is chosen from the following:
LD3 A linear dimension measurement is used to denote the distance between two arbitrary points on a 3D model. See 13.6.7.3.2, "3D linear dimension measurement" for a listing of additional entries in this dictionary.
PD3 A perpendicular dimension measurement is used to denote the perpendicular distance between two geometric entities (normally two lines or a point and a line). See "Table 328 — Additional entries in a 3D measurement/markup dictionary for a 3D perpendicular dimension measurement" for a listing of additional entries in this dictionary.
AD3 An angular dimension measurement is used to denote the angle between two linear entities. See "Table 329 — Additional entries in a 3D measurement/markup dictionary for a 3D angular dimension measurement" for a listing of additional entries in this dictionary.
RD3 A radial dimension measurement is used to define the radius or diameter of a circular 3D entity. See "Table 330 — Additional entries in a 3D measurement/markup dictionary for a 3D radial dimension measurement" for a listing of additional entries in this dictionary.
3DC A 3D comment note lets users connect a comment to a specific piece of geometry in the 3D model. See "Table 331 — Additional entries in a 3D measurement/markup dictionary for a 3D comment note" for a listing of additional entries in this dictionary.

=head2 TRL [text string]
- (Optional; PDF 2.0) A name string that may be associated with a measurement markup. If omitted, an interactive PDF processor may create one.
Interactive PDF processors that do not provide a user interface for such elements ignores this field.

=end pod
