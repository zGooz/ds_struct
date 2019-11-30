
  /// @function ds_tree_get_height(node, [not_closed], [level], [max_level])

  /// @arg node
  /// @arg not_closed
  /// @arg level
  /// @arg max_lvl

  /*
      description :

          Returns the nesting level.

      parametrs/arguments :

          [0] - { real } - node.
          [1] - { real } - Skip private folders. (not necessary).
          [2] - { real } - current level. (not necessary).
          [3] - { real } - max level. (not necessary).

      return: real
  */

  var node       = argument[0];
  var is_cmp_cls = argument_count     ? argument[1] : false;
  var level      = argument_count > 2 ? argument[2] : 0;
  var max_lvl    = argument_count > 3 ? argument[3] : 0;
  
  if node[? __DS_TREE_MEMBER_IS_NODE]
  {
      var list_child = node[? __DS_TREE_MEMBER_CHILDS];
      var size       = ds_list_size(list_child);

      for (var i = 0; i < size; i++;)
      {
          var val      = list_child[| i];
          var next_lvl = level + 1;

          if val[? __DS_TREE_MEMBER_IS_NODE]
          {
            var get_lvl = 0;
            if is_cmp_cls && val[? __DS_TREE_MEMBER_IS_OPEN]
            {
              get_lvl = ds_tree_get_height(val, is_cmp_cls, next_lvl, max_lvl);
            }
            max_lvl = max(max_lvl, get_lvl);
          }
          else
          {
            max_lvl = max(max_lvl, next_lvl);
          }
          size += ds_tree_get_size(val, is_cmp_cls);
      }
  }

  return max_lvl;
