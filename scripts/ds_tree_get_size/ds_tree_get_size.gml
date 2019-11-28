
  /// @function ds_tree_get_size(node, [not_closed])

  /// @arg node
  /// @arg not_closed

  /*
      description :

          Returns the number of tree items.

      parametrs/arguments :

          [0] - { real } - node.
          [1] - { real } - Skip private folders. (not necessary).

      return: real
  */

  var node       = argument[0];
  var is_cmp_cls = argument_count ? argument[1] : false;
  var size = 0;
  
  if node[? __DS_TREE_MEMBER_IS_NODE]
  {
    var list_child = node[? __DS_TREE_MEMBER_CHILDS];
    size       = ds_list_size(list_child);

    for (var i = 0; i < size; i++;)
    {
      var val     = list_child[| i];
      var is_node = val[? __DS_TREE_MEMBER_IS_NODE];
      var is_open = val[? __DS_TREE_MEMBER_IS_OPEN];
    
      if is_cmp_cls && is_node && is_open
      {
         size += ds_tree_get_size(val, is_cmp_cls);
      }
    }
  }

  return size;
