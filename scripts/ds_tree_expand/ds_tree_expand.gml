
  /// @function ds_tree_expand(node, is_expand)

  /// @arg node

  /*
      description :
    
          Expandet all folders.

      parametrs/arguments :
  
          [0] - { real } - member (node or item).

      return: n/a
  */

  var node      = argument0;
  var is_expand = argument1;
  var child     = node[? __DS_TREE_MEMBER_CHILDS];

  if is_expand
  {
    for (var i = 0; i < ds_list_size(child); i++;)
    {
      var value = child[| i];    
      if value[? __DS_TREE_MEMBER_IS_NODE]
      {
        ds_tree_expand(value, is_expand);
        value[? __DS_TREE_MEMBER_IS_OPEN] = true;
      }
    }
  }
  
  node[? __DS_TREE_MEMBER_IS_OPEN] = true;
