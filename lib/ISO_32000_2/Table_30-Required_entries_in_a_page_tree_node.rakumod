use v6;
role ISO_32000_2::Table_30-Required_entries_in_a_page_tree_node {
    method Type {...};
    method Parent {...};
    method Kids {...};
    method Count {...};
}

=begin pod

=head1 Description

Table 30 — Required entries in a page tree node

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Pages for a page tree node.

=head2 Parent [dictionary]
- (Required except in root node; not permitted in the root node; is an indirect reference) The page tree node that is the immediate parent of this one.

=head2 Kids [array]
- (Required) An array of indirect references to the immediate children of this node. The children is only be page objects or other page tree nodes.

=head2 Count [integer]
- (Required) The number of leaf nodes (page objects) that are descendants of this node within the page tree.
NOTE Since the number of pages descendent from a Pages dictionary can be accurately determined by examining the tree itself using the Kids arrays, the Count entry is redundant.
A PDF writer shall ensure that the value of the Count key is consistent with the number of entries in the Kids array and its descendants which definitively determines the number of descendant pages.

=end pod
