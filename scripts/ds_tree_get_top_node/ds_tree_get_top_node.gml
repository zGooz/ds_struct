  
  /// @function ds_tree_get_top_node(node)

  /// @arg node

  /*
      description :
    
          If you imagine the tree as a classic widget "tree_view", 
          then this script returns the node that is above this node.

      parametrs/arguments :
  
          [0] - { real } - node id.

      return: real [node id] <ds map> or -1
  */
  
  var node      = argument0;
  var key_par   = __DS_TREE_MEMBER_PARENT;
  var key_child = __DS_TREE_MEMBER_CHILDS;
  var parent    = node[? key_par];
  if parent == -1 return -1;  
  
  var child = parent[? key_child];
  var index = ds_list_find_index(child, node) - 1;
  var size  = ds_list_size(child);
  var result = -1;

  if index == -1
      result = parent;
  else
  {
      var result = child[| index]; 
      while result[? __DS_TREE_MEMBER_IS_OPEN]
      {
        var val_child = result[? key_child];            
        if ds_list_empty(val_child)
            break;
        else
        {
            var size    = ds_list_size(val_child);
            var tmp_val = val_child[| size - 1];
                result  = tmp_val;
        }
      }
  }
  
  return result;
  