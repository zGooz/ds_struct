  
  /// @function ds_tree_get_all_ids(node, list)

  /// @arg node
  /// @arg list

  /*
      description :

          Enters the identifiers of all elements 
          of the tree in the specified list.

      parametrs/arguments :

          [0] - { real } - node is.
          [1] - { real } - ds list id;

      return: n/a
  */
  
  var node = argument0;
  var list = argument1;
  
  ds_list_add(list, node);
  
  if node[? __DS_TREE_MEMBER_IS_NODE]
  {
    var child = node[? __DS_TREE_MEMBER_CHILDS];
    var size  = ds_list_size(child);
  
    for (var i = 0; i < size; i++;)
    {
      var value = child[| i];
      ds_tree_get_all_ids(value, list);
    }
  }
  