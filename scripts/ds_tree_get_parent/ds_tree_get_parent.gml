  
  /// @function ds_tree_get_parent(node)

  /// @arg node

  /*
      description :
    
          Returns the identifier of the parent node, if any.

      parametrs/arguments :
  
          [0] - { real } - node id.
          
      return: real [node id] <ds map> or -1
  */
  
  var node = argument0;
  return node[? __DS_TREE_MEMBER_PARENT];
  