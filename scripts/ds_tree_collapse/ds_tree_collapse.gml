
  /// @function ds_tree_collapse(tree or node, is_collapse)

  /// @arg node
  /// @arg is_collapse

  /*
      description :
    
          Collapses all folders.

      parametrs/arguments :
  
          [0] - { real } - member (node or item).

      return: n/a
  */

  var node        = argument0;
  var is_collapse = argument1;
  var child       = node[? __DS_TREE_MEMBER_CHILDS];

  if is_collapse
  {
    for (var i = 0; i < ds_list_size(child); i++;)
    {
      var value = child[| i];    
      if value[? __DS_TREE_MEMBER_IS_NODE]
      {
        ds_tree_collapse(value, is_collapse);
        value[? __DS_TREE_MEMBER_IS_OPEN] = false;
      }
    }
  }
  
  node[? __DS_TREE_MEMBER_IS_OPEN] = false;
