
  /// @function ds_tree_get_width(node, [not_closed])

  /// @arg node
  /// @arg not_closed

  /*
      description :

          Returns the number of nodes that do not have descendants, 
          as well as objects on which the tree branch breaks.

      parametrs/arguments :

          [0] - { real } - node.
          [1] - { real } - Skip private folders. (not necessary).

      return: real
  */

  var node       = argument[0];
  var is_cmp_cls = argument_count ? argument[1] : false;
  var width      = 0;
  
  if node[? __DS_TREE_MEMBER_IS_NODE]
  {
      var list_child = node[? __DS_TREE_MEMBER_CHILDS];
      if ds_list_empty(list_child)
          width++;
      else
      {
          for (var i = 0; i < ds_list_size(list_child); i++;)
          {
            var val     = list_child[| i];
            var is_node = val[? __DS_TREE_MEMBER_IS_NODE];
            var is_open = val[? __DS_TREE_MEMBER_IS_OPEN];
    
            if is_cmp_cls && is_node && is_open
            {
               width += ds_tree_get_width(val, is_cmp_cls);
            }
          }
      }
  } 
  else width++;

  return width;
