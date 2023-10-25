use v6;
role ISO_32000_2::Table_49-Entries_in_a_developer_extensions_dictionary {
    method Type {...};
    method BaseVersion {...};
    method ExtensionLevel {...};
    method URL {...};
    method ExtensionRevision {...};
}

=begin pod

=head1 Description

Table 49 — Entries in a developer extensions dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; is a direct object if present) The type of PDF object that this dictionary describes; if present, is DeveloperExtensions.

=head2 BaseVersion [name]
- (Required; is a direct object) The name of the PDF version to which this extension applies. The name is consistent with the syntax used for the Version entry of the catalog dictionary (see 7.7.2, "Document catalog dictionary").

=head2 ExtensionLevel [integer]
- (Required; is a direct object) An integer defined by the developer to denote the extension being used. If the developer introduces more than one extension to a given BaseVersion the extension level numbers assigned by that developer increases over time.

=head2 URL [string]
- (Optional; PDF 2.0; is a direct object if present) A URL that refers to the documentation for this extension (see Annex E, "Extending PDF").

=head2 ExtensionRevision [text string]
- (Optional; PDF 2.0; is a direct object if present) An optional text string that provides additional revision information on the extension level being used.
NOTE The ExtensionRevision key was introduced in this document (2020).

=end pod
