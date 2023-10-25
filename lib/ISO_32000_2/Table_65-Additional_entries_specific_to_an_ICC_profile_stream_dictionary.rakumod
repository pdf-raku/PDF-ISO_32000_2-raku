use v6;
role ISO_32000_2::Table_65-Additional_entries_specific_to_an_ICC_profile_stream_dictionary {
    method N {...};
    method Alternate {...};
    method Range {...};
    method Metadata {...};
}

=begin pod

=head1 Description

Table 65 — Additional entries specific to an ICC profile stream dictionary

=head1 Methods (Entries)

=head2 N [integer]
- (Required) The number of colour components in the colour space described by the ICC profile data. This number matches the number of components actually in the ICC profile. Valid values for N: 1, 3, or 4.

=head2 Alternate [name or array]
- (Optional) An alternate colour space that is used in case the one specified in the stream data is not supported. PDF readers does not use this colour space. The alternate space may be any valid colour space (except a Pattern colour space) that has the number of components specified by N. If this entry is omitted and the PDF reader does not understand the ICC profile data, the colour space that is used is DeviceGray, DeviceRGB, or DeviceCMYK, depending on whether the value of N is 1, 3, or 4, respectively. There is not conversion of source colour values, such as a tint transformation, when using the alternate colour space. Colour values within the range of the ICCBased colour space might not be within the range of the alternate colour space. In this case and after constraining to the ICCBased range, the nearest values within the range of the alternate space is substituted without error indication.

=head2 Range [array]
- (Optional) An array of 2 × N numbers [𝑚𝑖𝑛0 𝑚𝑎𝑥0 𝑚𝑖𝑛1 𝑚𝑎𝑥1…] that specifies the minimum and maximum valid values of the corresponding colour components. These values matches the information in the ICC profile. Default value: [0.0 1.0 0.0 1.0…].

=head2 Metadata [stream]
- (Optional; PDF 1.4) A metadata stream that contains metadata for the colour space ("see 14.3.2, "Metadata streams").

=end pod
