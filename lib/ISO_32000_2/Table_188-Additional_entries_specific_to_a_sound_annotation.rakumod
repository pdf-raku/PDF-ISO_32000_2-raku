use v6;
role ISO_32000_2::Table_188-Additional_entries_specific_to_a_sound_annotation {
    method Subtype {...};
    method Sound {...};
    method Name {...};
}

=begin pod

=head1 Description

Table 188 — Additional entries specific to a sound annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Sound for a sound annotation.

=head2 Sound [stream]
- (Required) A sound object defining the sound that is played when the annotation is activated (see 13.3, "Sounds").

=head2 Name [name]
- (Optional) The name of an icon that is used in displaying the annotation. PDF writers includes this entry and PDF readers provides predefined icon appearances for at least the standard names Speaker and Mic. Additional names may be supported as well. Default value: Speaker.

=end pod
