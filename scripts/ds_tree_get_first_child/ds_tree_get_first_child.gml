  
  /// @function ds_tree_get_first_child(node)

  /// @arg node

  /*
      description :
    
          Returns the first child, if any.

      parametrs/arguments :
  
          [0] - { real } - node id.
          
      return: real [node id] <ds map> or -1
  */
  
  var node = argument0;
  if node[? __DS_TREE_MEMBER_IS_NODE]
  {
      var list = node[? __DS_TREE_MEMBER_CHILDS];
      if ds_list_empty(list)
          return -1;
      else
          return list[| 0];
  }
  else
      return -1;
  