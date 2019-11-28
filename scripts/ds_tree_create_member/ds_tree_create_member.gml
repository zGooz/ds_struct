
  /// @function ds_tree_create_member(is_node, name, is_open)
  
  /// @arg is_node
  /// @arg name
  /// @arg is_open
  
  /*
      description :
      
          Creates an element that can later 
          become part of a tree (node or item).
          
      parametrs / arguments
      
          [0] - { bollean } - member is node.
          [1] - { string  } - member name.
          [2] - { real    } - member is open.
          
      return : 
      
          real [member id] <ds map>
  */
  
  var is_node = argument0;
  var name    = argument1;
  var is_open = argument2;
  
  var member                             = ds_map_create();
      member[? __DS_TREE_MEMBER_IS_NODE] = is_node;
      member[? __DS_TREE_MEMBER_NAME]    = name;
      member[? __DS_TREE_MEMBER_PARENT]  = -1;
      member[? __DS_TREE_MEMBER_VISIBLE] = true;
      member[? __DS_TREE_MEMBER_IS_OPEN] = false;
      member[? __DS_TREE_MAIN_NODE_]     = -1;
      
  if is_node
  {
    member[? __DS_TREE_MEMBER_IS_OPEN] = is_open;
    member[? __DS_TREE_MEMBER_CHILDS]  = ds_list_create();
  }
  
  return member;
  