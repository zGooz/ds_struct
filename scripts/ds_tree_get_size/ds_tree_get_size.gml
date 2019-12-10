
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

  var node    = argument[0];
  var is_skip = argument_count ? argument[1] : false;
  var size    = 0;
  
  if !node[? __DS_TREE_MEMBER_IS_NODE] return size;
  var list_child = node[? __DS_TREE_MEMBER_CHILDS];
      size       = ds_list_size(list_child);
  
  for (var i = 0; i < size; i++;)
  {
    var val = list_child[| i];
    if is_undefined(val) continue;
    var is_open = val[? __DS_TREE_MEMBER_IS_OPEN];
    if is_skip && !is_open continue;    
    size += ds_tree_get_size(val, is_skip);
  }

  return size;
