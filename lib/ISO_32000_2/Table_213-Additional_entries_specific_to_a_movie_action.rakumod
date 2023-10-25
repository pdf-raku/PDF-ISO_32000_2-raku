use v6;
role ISO_32000_2::Table_213-Additional_entries_specific_to_a_movie_action {
    method S {...};
    method Annotation {...};
    method T {...};
    method Operation {...};
}

=begin pod

=head1 Description

Table 213 — Additional entries specific to a movie action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Movie for a movie action.

=head2 Annotation [dictionary]
- (Optional) An indirect reference to a movie annotation identifying the movie that is played. The dictionary includes either an Annotation or a T entry but not both.

=head2 T [text string]
- (Optional) The title of a movie annotation identifying the movie that is played.
The dictionary includes either an Annotation or a T entry but not both.

=head2 Operation [name]
- (Optional) The operation that is performed on the movie:
Play Start playing the movie, using the play mode specified by the dictionary’s Mode entry (see "Table 307 — Entries in a movie activation dictionary"). If the movie is currently paused, it is repositioned to the beginning before playing (or to the starting point specified by the dictionary’s Start entry, if present).
Stop Stop playing the movie.
Pause Pause a playing movie.
Resume Resume a paused movie.
Default value: Play.

=end pod
