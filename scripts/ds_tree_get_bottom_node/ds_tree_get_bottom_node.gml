  
  /// @function ds_tree_get_bottom_node(node, [is_cicle])

  /// @arg node
  /// @arg is_cicle

  /*
      description :
    
          If you imagine the tree as a classic widget "tree_view", 
          then this script returns the node that is under this node.

      parametrs/arguments :
  
          [0] - { real } - node id.
          [1] - { bollean } - loop / cicle (not necessary).
          
      return: real [node id] <ds map> or -1
  */
  
  var node      = argument[0];
  var is_cicle  = argument_count ? argument[1] : false;
  var key_par   = __DS_TREE_MEMBER_PARENT;
  var key_child = __DS_TREE_MEMBER_CHILDS;
  var parent    = node[? key_par];
  if parent == -1 return -1;  
  
  var child = parent[? key_child];
  if ds_list_empty(child) return -1;
  var index    = ds_list_find_index(child, node) + 1;
  var size     = ds_list_size(child);
  var main_map = node[? __DS_TREE_MAIN_NODE_];
  var is_main  = (parent == main_map);  

  var result = child[| index];
  if node[? __DS_TREE_MEMBER_IS_OPEN]
  {
    var v_list = node[? key_child];
    return v_list[| 0];
  }

  if index == size
  {
      if is_main
      {
          if is_cicle
          {
            var c_list = main_map[? key_child];
            if ds_exists(c_list, ds_type_list)
            {
              if ds_list_empty(c_list)
                  return -1;
              else
                  return c_list[| 0];
            }
          }
          else result = node;
      }
      else
      {
          var tmp_node = node;
          while true
          {
              var par = tmp_node[? key_par];
              if par == main_map
              {
                if is_cicle
                {
                    var c_list = main_map[? key_child];
                    if ds_exists(c_list, ds_type_list)
                        result = c_list[| 0];
                    else
                        result = -1;
                }
                else 
                    result = node;                    
                break;
              }

              var gr_par = par[? key_par];
              if gr_par == -1 break;
              var c_list  = gr_par[? key_child];
              var j_index = ds_list_find_index(c_list, par) + 1;

              if j_index
              {
                result = c_list[| j_index];
                if !is_undefined(result)
                {
                  break;
                }
              }
              tmp_node = par;
          }
      }
  }

  return result;
  