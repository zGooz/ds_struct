
  /// @function ds_tree_include_member(tree, node, parent)
  
  /// @arg tree
  /// @arg node
  /// @arg parent

  /*
      description :

          Embeds a node (or tree!) inside another tree.

      parametrs/arguments :

          [0] - { real } - tree id.
          [1] - { real } - node id.
          [2] - { real } - [parent] (not necessary).

      return: n/a
  */
  
  var tree = argument[0];
  var node = argument[1];
  
  var main_key = __DS_TREE_MAIN_NODE_;
  var parent = argument_count > 2 ? argument[2] : tree[? main_key];
  
  if parent[? __DS_TREE_MEMBER_IS_NODE]
  {
      var key_par    = __DS_TREE_MEMBER_PARENT;
      var key_child  = __DS_TREE_MEMBER_CHILDS;
      var old_parent = node[? key_par];
    
      if old_parent != -1
      {
        var childs = old_parent[? key_child];
        var index  = ds_list_find_index(childs, node);
        if index != -1 ds_list_delete(childs, index);
      }
    
      node[? key_par]  = parent;
      var childs       = parent[? key_child];
      node[? key_par]  = parent;
      node[? main_key] = tree[? main_key];
    
      ds_list_add(childs, node);
  }
  else
  {
      var key_name = __DS_TREE_MEMBER_NAME;
      var str_par  = string(parent[? key_name]);
      var name     = node[? key_name];
    
      show_message
      (
        "Can not add member \"" + name + "\" to member \"" + str_par + "\"." +
        "\nThis is member \"" + str_par + "\" not is a node."
      );
  }
  