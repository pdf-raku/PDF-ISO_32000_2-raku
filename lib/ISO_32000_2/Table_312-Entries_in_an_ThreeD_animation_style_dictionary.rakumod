use v6;
role ISO_32000_2::Table_312-Entries_in_an_ThreeD_animation_style_dictionary {
    method Type {...};
    method Subtype {...};
    method PC {...};
    method TM {...};
}

=begin pod

=head1 Description

Table 312 — Entries in an 3D animation style dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional). The type of PDF object that this dictionary describes; if present, is 3DAnimationStyle.

=head2 Subtype [name]
- (Optional) The animation style described by this dictionary; see "Table 313 — Animation styles" for valid values. If an animation style is encountered other than those described in "Table 313 — Animation styles", an animation style of None is used.
Default value: None

=head2 PC [integer]
- (Optional) An integer specifying the play count for this animation style. A non-negative integer represents the number of times the animation is played. A negative integer indicates that the animation is infinitely repeated. This value is ignored for animation styles of type None.
Default value: 0

=head2 TM [number]
- (Optional) A positive number specifying the time multiplier that is used when running the animation. A value greater than one shortens the time it takes to play the animation, or effectively speeds up the animation.
NOTE This allows authors to adjust the desired speed of animations, without having to re-author the 3D artwork.
This value is ignored for animation styles of type None. Default value: 1

=end pod
