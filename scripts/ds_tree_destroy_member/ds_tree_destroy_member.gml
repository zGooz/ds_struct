
  /// @function ds_tree_destroy_member(node)

  /// @arg node

  /*
      description :

          Removes a tree item (node or item).
          Warning, when deleting an item (If this is a node),
          including all its child elements are deleted.

      parametrs/arguments :

          [0] - { real } - member.

      return: n/a
  */

  var member = argument0;  
  if member[? __DS_TREE_MEMBER_IS_NODE]
  {
    var childs = member[? __DS_TREE_MEMBER_CHILDS];
    var size   = ds_list_size(childs);

    for (var i = 0; i < size; i++;)
    {
      var value = childs[| i];
      if !is_undefined(value)
          ds_tree_destroy_member(value);
    }
    ds_list_destroy(childs);
  }
  ds_map_destroy(member);
