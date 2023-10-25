use v6;
role ISO_32000_2::Table_40-Additional_entries_specific_to_a_Type_2_function_dictionary {
    method C0 {...};
    method C1 {...};
    method N {...};
}

=begin pod

=head1 Description

Table 40 — Additional entries specific to a Type 2 function dictionary

=head1 Methods (Entries)

=head2 C0 [array]
- (Optional) An array of n numbers that defines the function result when 𝑥 = 0.0. Default value: [0.0].

=head2 C1 [array]
- (Optional) An array of n numbers that defines the function result when 𝑥= 1.0. Default value: [1.0].

=head2 N [number]
- (Required) The interpolation exponent. Each input value x shall return n values, given by yj=C0j+xN×(C1j−C0j), for 0≤j<n24T.

=end pod
