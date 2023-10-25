use v6;
role ISO_32000_2::Table_323-Entries_in_a_ThreeD_node_dictionary {
    method Type {...};
    method N {...};
    method O {...};
    method V {...};
    method M {...};
    method Instance {...};
    method Data {...};
    method RM {...};
}

=begin pod

=head1 Description

Table 323 — Entries in a 3D node dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DNode for a 3D node dictionary.

=head2 N [text string]
- (Required) The name of the node being described by the node dictionary. All names in the node dictionary is unique. Interpretation of this entry depends upon the 3D format specified in the Subtype entry in "Table 311 — Entries in a 3D stream dictionary" as described below:
U3D If the Subtype of the corresponding 3D Stream is U3D, this entry corresponds to the field Node block name, specified in the Universal 3D file format.
PRC (PDF 2.0) If the Subtype of the corresponding 3D Stream is PRC, this entry is the Unique Identifier (UUID) as specified in ISO 14739-1.
NOTE 1 When comparing this entry to node names for a particular convention (such as Universal 3D or PRC), interactive PDF processors will need to translate between the PDF text encoding used by PDF and the character encoding specified in the 3D stream.
NOTE 2 The description of the value of the N key was clarified in this document (2020).

=head2 O [number]
- (Optional) A number in the range [0, 1] indicating the opacity of the geometry supplied by this node using a standard additive blend mode.
If this entry is absent, the viewer uses the opacity specified for the parent node or for the 3D artwork (in ascending order).

=head2 V [boolean]
- (Optional) A flag indicating the visibility of this node. If true, then the node is visible. If false, then the node is not visible.
If this entry is absent, the viewer uses the visibility specified for the parent node or for the 3D artwork (in ascending order).

=head2 M [array]
- (Optional) A 12-element 3D transformation matrix that specifies the position and orientation of this node, relative to its parent, in world coordinates (see 13.6.5, "Coordinate systems for 3D").

=head2 Instance [dictionary]
- (Required if data are present; PDF 2.0) An indirect object reference to a RichMediaInstance dictionary (see "Table 343 — Entries in a RichMediaInstance dictionary") that is also referenced by an entry in the Instances array.

=head2 Data [text string or stream]
- (Optional; PDF 2.0) A text string or stream that contains state data to be passed to the instance when the view is triggered.
See the extended description of the Data key in "Table 345 — Entries in a View Params dictionary".

=head2 RM [dictionary]
- (Optional; PDF 2.0) A render mode dictionary that specifies the render mode and related properties for this node. If omitted, the render mode specified in the 3D view is used, and if that is not present, the render mode of the 3D artwork is used.
The render mode dictionary is identical to that used by the 3D view dictionary. See "Table 318 — Entries in a render mode dictionary".

=end pod
