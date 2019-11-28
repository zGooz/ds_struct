
  /// @function ds_tree_exclude_member(node)
  
  /// @arg node

  /*
      description :

          Separates a node (or tree) from another tree.

      parametrs/arguments :

          [0] - { real } - node.

      return: n/a
  */
  
  var node   = argument0;  
  var parent = node[? __DS_TREE_MEMBER_PARENT];
  var childs = parent[? __DS_TREE_MEMBER_CHILDS];
  var index  = ds_list_find_index(childs, node);
  if index != -1 ds_list_delete(childs, index);
  node[? __DS_TREE_MEMBER_PARENT] = -1;
  node[? __DS_TREE_MAIN_NODE_]    = -1;
  