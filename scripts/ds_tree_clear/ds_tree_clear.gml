
  /// @function ds_tree_clear(tree)

  /// @arg tree

  /*
      description :

          Removes all elements of the tree.

      parametrs/arguments :

          [0] - { real } - tree.

      return: real
  */

  var tree = argument0;
  var main = tree[? __DS_TREE_MAIN_NODE_];
  var list = main[? __DS_TREE_MEMBER_CHILDS];
  var size = ds_list_size(list);
  
  for (var i = 0; i < size; i++;)
  {
    var value = list[| i];
    ds_tree_destroy_member(value);
  }
  ds_list_clear(list);
