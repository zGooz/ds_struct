  
  /// @function ds_tree_get_top_node(node, [is_cicle])

  /// @arg node
  /// @arg is_cicle

  /*
      description :
    
          If you imagine the tree as a classic widget "tree_view", 
          then this script returns the node that is above this node.

      parametrs/arguments :
  
          [0] - { real } - node id.
          [1] - { bollean } - loop / cicle (not necessary).

      return: real [node id] <ds map> or -1
  */
  
  var node      = argument[0];
  var is_cicle  = argument_count ? argument[1] : false;
  var key_par   = __DS_TREE_MEMBER_PARENT;
  var key_child = __DS_TREE_MEMBER_CHILDS;
  var key_open  = __DS_TREE_MEMBER_IS_OPEN;
  var parent    = node[? key_par];
  if parent == -1 return -1;  
  
  var child  = parent[? key_child];
  var index  = ds_list_find_index(child, node) - 1;
  var size   = ds_list_size(child);
  var result = -1;

  if index == -1
  {      
      var main = node[? __DS_TREE_MAIN_NODE_];
      if node[? key_par] == main
      {
          if is_cicle
          {
              var last_node = main; 
              if main == -1
                  result = -1;
              else
              {
                  while true
                  {
                      var child = last_node[? key_child];     
                      if ds_exists(child, ds_type_list)
                      {
                        if ds_list_empty(child)
                            break;
                        else
                        {
                            if last_node[? key_open]
                            {
                              var n_size = ds_list_size(child);
                              last_node  = child[| n_size - 1];
                              if is_undefined(last_node) break;
                              result = last_node;
                            }
                        }
                      } else break;
                  }
              }
          } else result = node;
      } 
      else result = parent;
  }
  else
  {
      var result = child[| index]; 
      while result[? key_open]
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
  