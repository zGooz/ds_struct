  
  /// @function ds_tree_find_name(tree, name)

  /// @arg tree
  /// @arg name

  /*
      description :
    
          Finds the identifier of a node with a specific name 
          (of course, the first one found, if there are several).

      parametrs/arguments :
  
          [0] - { real } - tree id.
          [1] - { string } - name;
          
      return: real [node id] <ds map> or -1
  */
  
  var tree = argument0;
  var name = argument1;
  var main = tree[? __DS_TREE_MAIN_NODE_];
  var list = ds_list_create(); show_message("before cicle " + string(list))
  
  ds_tree_get_all_ids(main, list);
  
  var size = ds_list_size(list);  
  for (var i = 0; i < size; i++;)
  {
    var node = list[| i];
    if node[? __DS_TREE_MEMBER_NAME] == name
    {
      ds_list_destroy(list);      
      return node;
      break;
    }
  }
  
  ds_list_destroy(list);
  return -1;
  