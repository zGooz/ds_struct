  
  /// @function ds_tree_get_bottom_node(node)

  /// @arg node

  /*
      description :
    
          If you imagine the tree as a classic widget "tree_view", 
          then this script returns the node that is under this node.

      parametrs/arguments :
  
          [0] - { real } - node id.
          
      return: real [node id] <ds map> or -1
  */
  
  var node      = argument0;
  var key_par   = __DS_TREE_MEMBER_PARENT;
  var key_child = __DS_TREE_MEMBER_CHILDS;
  var parent    = node[? key_par];
  if parent == -1 return -1;  
  
  var child    = parent[? key_child];
  var index    = ds_list_find_index(child, node) + 1;
  var size     = ds_list_size(child);
  var main_map = node[? __DS_TREE_MAIN_NODE_];
  var is_main  = (parent == main_map);  

  var value = child[| index];
  if node[? __DS_TREE_MEMBER_IS_OPEN]
  {
    var v_list = node[? key_child];
    return v_list[| 0];
  }

  if index == size
  {
      if is_main
      {
          var c_list = main_map[? key_child];
          if ds_list_empty(c_list)
              return -1;
          else
              return c_list[| 0];
      }
      else
      {
          var tmp_node = node;
          while true
          {
              var par = tmp_node[? key_par];
              if par == main_map
              {
                var c_list = main_map[? key_child];
                    value  = c_list[| 0];
                break;
              }

              var gr_par  = par[? key_par];
              var c_list  = gr_par[? key_child];
              var j_index = ds_list_find_index(c_list, par) + 1;

              if j_index
              {
                value = c_list[| j_index];
                if !is_undefined(value)
                {
                  break;
                }
              }
              tmp_node = par;
          }
      }
  }

  return value;
  