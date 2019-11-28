
  /// @function ds_tree_delete_member(tree, node)

  /// @arg tree
  /// @arg node

  /*
      description :

          Excludes the item from the tree, then delete it with all its contents. 
          Releasing the memory allocated for this item.

      parametrs/arguments :

          [0] - { real } - widget id (pointer or link map).
          [1] - { real } - node.

      return: n/a
  */

  var member = argument0;
  ds_tree_exclude_member(member);
  ds_tree_destroy_member(member);
