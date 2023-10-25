use v6;
role ISO_32000_2::Table_169-Entries_in_a_border_effect_dictionary {
    method S {...};
    method I {...};
}

=begin pod

=head1 Description

Table 169 — Entries in a border effect dictionary

=head1 Methods (Entries)

=head2 S [name]
- (Optional) A name representing the border effect to apply. Values are:
C The border appears "cloudy"; that is, the border is drawn as a series of convex curved line segments in a manner that simulates the appearance of a cloud. The width and dash array specified by BS is honoured. Default value: S.
S No effect: the border is as described by the annotation dictionary’s BS entry.

=head2 I [number]
- (Optional; valid only if the value of S is C) A number describing the intensity of the effect, in the range 0 to 2. Default value: 0.

=end pod
