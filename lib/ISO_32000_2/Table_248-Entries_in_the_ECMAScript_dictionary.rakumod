use v6;
role ISO_32000_2::Table_248-Entries_in_the_ECMAScript_dictionary {
    method Before {...};
    method After {...};
    method AfterPermsReady {...};
    method Doc {...};
}

=begin pod

=head1 Description

Table 248 — Entries in the ECMAScript dictionary

=head1 Methods (Entries)

=head2 Before [text string or text stream]
- (Optional) A text string or text stream containing an ECMAScript script that is executed just before the FDF file is imported.

=head2 After [text string or text stream]
- (Optional) A text string or text stream containing an ECMAScript script that is executed just after the FDF file is imported.

=head2 AfterPermsReady [text string or text stream]
- (Optional; PDF 1.6) A text string or text stream containing an ECMAScript script that is executed after the FDF file is imported and the usage rights in the PDF document have been determined (see 12.8.2.3, "UR").

=head2 Doc [Array]
- (Optional) An array defining additional ECMAScript scripts that is added to those defined in the JavaScript entry of the document’s name dictionary (see 7.7.4, "Name dictionary"). The array contains an even number of elements, organised in pairs. The first element of each pair is a name and the second is a text string or text stream defining the script corresponding to that name. Each of the defined scripts is added to those already defined in the name dictionary and is then executed before the script defined in the Before entry is executed.
NOTE As described in 12.6.4.17, "ECMAScript actions" these scripts are used to define ECMAScript functions for use by other scripts in the document.

=end pod
