use v6;
role ISO_32000_2::Table_355-Entries_in_a_structure_element_dictionary {
    method Type {...};
    method S {...};
    method P {...};
    method ID {...};
    method Ref {...};
    method Pg {...};
    method K {...};
    method A {...};
    method C {...};
    method R {...};
    method T {...};
    method Lang {...};
    method Alt {...};
    method E {...};
    method ActualText {...};
    method AF {...};
    method NS {...};
    method PhoneticAlphabet {...};
    method Phoneme {...};
}

=begin pod

=head1 Description

Table 355 — Entries in a structure element dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is StructElem for a structure element.

=head2 S [name]
- (Required) The structure type, a name object identifying the nature of the structure element and its role within the document, such as a chapter, paragraph, or footnote (see 14.7.3, "Structure types"). Names of structure types conforms to the guidelines described in Annex E, "Extending PDF".

=head2 P [dictionary]
- (Required; is an indirect reference) The structure element or the structure tree root that is the immediate parent of this structure element in the structure hierarchy.

=head2 ID [byte string]
- (Optional) The element identifier, a byte string designating this structure element. The string is unique among all elements in the document’s structure hierarchy. The IDTree entry in the structure tree root (see "Table 354 — Entries in the structure tree root") defines the correspondence between element identifiers and the structure elements they denote.

=head2 Ref [array]
- (Optional; PDF 2.0) An array containing zero, one or more indirect references to structure elements. A Ref identifies the structure element or elements to which the item of content, contained within this structure element, refers (e.g. footnotes, endnotes, sidebars, etc.).

=head2 Pg [dictionary]
- (Optional; required if K is an integer object or an array containing integer objects; is an indirect reference) A page object representing a page on which some or all of the content items designated by the K entry is rendered.

=head2 K [(various)]
- (Optional) The children of this structure element. The value of this entry may be one of the following objects or an array consisting of one or more of the following objects in any combination:
Each of these objects other than the first (structure element dictionary) is considered to be a content item; see 14.7.5, "Structure content" for further discussion of each of these forms of representation.
If the value of K is a dictionary containing no Type entry, it is assumed to be a structure element dictionary.

=head2 A [(various)]
- (Optional) A single attribute object or array of attribute objects associated with this structure element. Each attribute object is either a dictionary or a stream. If the value of this entry is an array, each attribute object in the array may be followed by an integer representing its revision number (see 14.7.6, "Structure attributes" and 14.7.6.3, "Attribute revision numbers").

=head2 C [name or array]
- (Optional) An attribute class name or array of class names associated with this structure element. If the value of this entry is an array, each class name in the array may be followed by an integer representing its revision number (see 14.7.6.2, "Attribute classes" and 14.7.6.3, "Attribute revision numbers").
If both the A and C entries are present and a given attribute is specified by both, the one specified by the A entry takes precedence.

=head2 R [integer]
- (Optional) The current revision number of this structure element (see 14.7.6.3, "Attribute revision numbers"). The value is a non-negative integer. Default value: 0.

=head2 T [text string]
- (Optional) The title of the structure element, a text string representing it in human-readable form. The title should characterise the specific structure element, such as Chapter 1, rather than merely a generic element type, such as Chapter.

=head2 Lang [text string]
- (Optional; PDF 1.4) A language identifier specifying the natural language for all text in the structure element except where overridden by language specifications for nested structure elements or marked-content (see 14.9.2, "Natural language specification").

=head2 Alt [text string]
- (Optional) An alternative description of the structure element and its children in human-readable form, which is useful when extracting the document’s contents in support of accessibility to users with disabilities or for other purposes (see 14.9.3, "Alternate descriptions").

=head2 E [text string]
- (Optional; PDF 1.5) The expanded form of an abbreviation or an acronym.

=head2 ActualText [text string]
- (Optional; PDF 1.4) Text that is an exact replacement for the content enclosed by the structure element and its children. This replacement text (which applies to as small a piece of content as possible) is useful when extracting the document’s contents in support of accessibility to users with disabilities or for other purposes (see 14.9.4, "Replacement text").

=head2 AF [array of dictionaries]
- (Optional; PDF 2.0) An array of one or more file specification dictionaries (7.11.3, "File specification dictionaries") which denote the associated files for this entire structure element. See 14.13, "Associated files".

=head2 NS [dictionary]
- (Optional; PDF 2.0) An indirect reference to a namespace dictionary defining the namespace this element belongs to (see 14.7.4, "Namespaces"). If not present, the element is considered to be in the default standard structure namespace (see 14.8.6, "Standard structure namespaces").

=head2 PhoneticAlphabet [Name]
- (Optional; PDF 2.0) Property for a structure element that indicates the phonetic alphabet used by a Phoneme property. Applies to the structure element and its children, except where overridden by a child structure element.
Currently defined values are:
Other values may be used.
Default value: ipa.
See 14.9.6, "Pronunciation hints" for further discussion.

=head2 Phoneme [text string]
- (Optional; PDF 2.0) Property for a structure element that may be used as pronunciation hint. It is an exact replacement for content enclosed by the structure element and its children.
The value for a Phoneme property is to be interpreted based on the PhoneticAlphabet property in effect.
See 14.9.6, "Pronunciation hints" for further discussion.

=end pod
