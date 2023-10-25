use v6;
role ISO_32000_2::Table_99-Entries_in_an_optional_content_configuration_dictionary {
    method Name {...};
    method Creator {...};
    method BaseState {...};
    method ON {...};
    method OFF {...};
    method Intent {...};
    method AS {...};
    method Order {...};
    method ListMode {...};
    method RBGroups {...};
    method Locked {...};
}

=begin pod

=head1 Description

Table 99 — Entries in an optional content configuration dictionary

=head1 Methods (Entries)

=head2 Name [text string]
- (Optional) A name for the configuration, suitable for presentation in a user interface.

=head2 Creator [text string]
- (Optional) Name of the application or feature that created this configuration dictionary.

=head2 BaseState [name]
- (Optional) Used to initialise the states of all the optional content groups in a document when this configuration is applied. The value of this entry is one of the following names:
ON The states of all groups is turned ON.
OFF The states of all groups is turned OFF.
Unchanged The states of all groups is left unchanged.
After this initialization, the contents of the ON and OFF arrays is processed, overriding the state of the groups included in the arrays.
Default value: ON.
If BaseState is present in the document’s default configuration dictionary, its value is ON.

=head2 ON [array]
- (Optional) An array of optional content groups whose state is set to ON when this configuration is applied.
If the BaseState entry is ON, this entry is redundant.

=head2 OFF [array]
- (Optional) An array of optional content groups whose state is set to OFF when this configuration is applied. Any OCG group included in the ON array does not also be included in the OFF array.
If the BaseState entry is OFF, this entry is redundant.

=head2 Intent [name or array]
- (Optional) A single name or an array of names used by a PDF processor to determine which optional content groups’ states to consider and which to ignore in calculating the visibility of content (see 8.11.2.3, "Intent").
Since this value may contain any name that could appear as the value of the Intent key in an optional content group dictionary, a special name, All, is used to indicate the set of all intents.
Default value: View. (If Intent is present in the document’s default configuration dictionary, its value is View.)

=head2 AS [array]
- (Optional) An array of usage application dictionaries (see "Table 101 — Entries in a usage application dictionary") specifying which usage dictionary categories (see "Table 100 — Entries in an optional content usage dictionary") is consulted by PDF processors, when automatically setting the states of optional content groups based on external factors, such as the current system language or viewing magnification, and when they is applied.

=head2 Order [array]
- (Optional) An array specifying the order for presentation of optional content groups in an interactive PDF processor’s user interface. The array elements may include the following objects:
Text labels in nested arrays is used to present collections of related optional content groups, and not to communicate actual nesting of content inside multiple layers of groups (see Example 1 in 8.11.4.3, "Optional content configuration dictionaries"). To reflect actual nesting of groups in the content, such as for layers with sublayers, nested arrays of groups without a text label is used (see Example 2 in 8.11.4.3, "Optional content configuration dictionaries").
An empty array [] explicitly specifies that no groups is presented.
In the default configuration dictionary, the default value is an empty array; in other configuration dictionaries, the default is the Order value from the default configuration dictionary.
Any groups not listed in this array is not presented in any user interface that uses the configuration.

=head2 ListMode [name]
- (Optional) A name specifying which optional content groups in the Order array is displayed to the user. Valid values is:
AllPages Display all groups in the Order array.
VisiblePages Display only those groups in the Order array that are referenced by one or more visible pages.
Default value: AllPages.

=head2 RBGroups [array]
- (Optional) An array consisting of one or more arrays, each of which represents a collection of optional content groups whose states is intended to follow a radio button paradigm. That is, the state of at most one optional content group in each array is ON at a time. If one group is turned ON, all others is turned OFF. However, turning a group from ON to OFF does not force any other group to be turned ON.
An empty array [] explicitly indicates that no such collections exist.
In the default configuration dictionary, the default value is an empty array; in other configuration dictionaries, the default is the RBGroups value from the default configuration dictionary.

=head2 Locked [array]
- (Optional; PDF 1.6) An array of optional content groups that is locked when this configuration is applied. The state of a locked group cannot be changed through the user interface of an interactive PDF processor. PDF writers can use this entry to prevent the visibility of content that depends on these groups from being changed by users.
Default value: an empty array.
An interactive PDF processor may allow the states of optional content groups to be changed by means other than the user interface, such as ECMAScript or items in the AS entry of a configuration dictionary.

=end pod
