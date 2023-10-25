use v6;
role ISO_32000_2::Table_337-Entries_in_a_RichMediaAnimation_dictionary {
    method Type {...};
    method Subtype {...};
    method PlayCount {...};
    method Speed {...};
}

=begin pod

=head1 Description

Table 337 — Entries in a RichMediaAnimation dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, the type is RichMediaAnimation.

=head2 Subtype [name]
- (Optional; PDF 2.0) The animation style described by this dictionary. Valid values are None, Linear, and Oscillating.
See "Table 313 — Animation styles" for descriptions of these animation styles.
If an animation style is encountered other than those described, an animation style of None is used.
Default value: None

=head2 PlayCount [integer]
- (Optional; PDF 2.0) An integer specifying the play count for this animation style. A nonnegative integer represents the number of times the animation is played. A negative integer indicates that the animation is infinitely repeated.
This value is ignored for an animation subtype of type None. Default value: -1

=head2 Speed [number]
- (Optional; PDF 2.0) A positive number specifying the speed that is used when running the animation. A value greater than one shall shorten the time it takes to play the animation, or effectively speed up the animation.
NOTE This allows authors to change the desired speed of animations without re-authoring the content.
This value is ignored for an animation subtype of type None. Default value: 1

=end pod
