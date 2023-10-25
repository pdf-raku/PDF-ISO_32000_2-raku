use v6;
role ISO_32000_2::Table_404-Additional_entries_specific_to_a_trap_network_appearance_stream {
    method PCM {...};
    method SeparationColorNames {...};
    method TrapRegions {...};
    method TrapStyles {...};
}

=begin pod

=head1 Description

Table 404 — Additional entries specific to a trap network appearance stream

=head1 Methods (Entries)

=head2 PCM [name]
- (Required) The name of the process colour model that was assumed when this trap network was created; equivalent to the PostScript language page device parameter ProcessColorModel (see clause 6.2.5 of the PostScript Language Reference, Third Edition). Valid values are DeviceGray, DeviceRGB, DeviceCMYK, DeviceCMY, DeviceRGBK, and DeviceN.

=head2 SeparationColorNames [array]
- (Optional) An array of names identifying the colourants that were assumed when this network was created; equivalent to the PostScript language page device parameter of the same name (see clause 6.2.5 of the PostScript Language Reference, Third Edition). Colourants implied by the process colour model PCM are available automatically and need not be explicitly declared. If this entry is absent, the colourants implied by PCM is assumed.

=head2 TrapRegions [array]
- (Optional; deprecated in PDF 2.0) An array of indirect references to TrapRegion objects defining the page’s trapping zones and the associated trapping parameters, as described in Adobe Technical Note 5620, Portable Job Ticket Format. These references refer to objects comprising portions of a PJTF job ticket that is embedded in the PDF file. When the trapping zones and parameters are defined by an external job ticket (or by some other means, such as JDF), this entry is absent.

=head2 TrapStyles [text string]
- (Optional) A human-readable text string that applications may use to describe this trap network to the user.
EXAMPLE To allow switching between trap networks.

=end pod
