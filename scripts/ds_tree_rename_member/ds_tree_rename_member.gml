
  /// @function ds_tree_rename_member(node, name)

  /// @arg node
  /// @arg name

  /*
      description :

          This is function can be used for set new name for a node.

      parametrs/arguments :

          [0] - {  real  } - node.
          [1] - { string } - name.

      return: n/a
  */

  var member = argument0;
  var name   = argument1;
      member[? __DS_TREE_MEMBER_NAME] = name;
