  
  /// @function ds_tree_get_low_brother(node)

  /// @arg node

  /*
      description :
    
          ...

      parametrs/arguments :
  
          [0] - { real } - node id.
          
      return: real [node id] <ds map> or -1
  */
  
  var node   = argument0;
  var parent = node[? __DS_TREE_MEMBER_PARENT];
  
  if parent != -1
  {
    var child = parent[? __DS_TREE_MEMBER_CHILDS];
    var index = ds_list_find_index(child, node) + 1;
    
    if ds_list_empty(child)
        return -1;
    else
    {
        var size = ds_list_size(child);
        if index == size
            return -1;
        else
            return child[| index];
    }
  }
  
  return -1;
  