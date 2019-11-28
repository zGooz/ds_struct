
  /// @function ds_tree_init()
  
  /*
      description :
      
          Creates a tree-type data structure.
          Returns the identifier of the tree.
          
      return : 
          
          real [tree id] <ds map>
  */
  
  var main         = __DS_TREE_MAIN_NODE_;
  var tree         = ds_map_create();
      tree[? main] = ds_tree_create_member(true, "", true);
  
  var vis     = __DS_TREE_MEMBER_VISIBLE;
  main        = tree[? __DS_TREE_MAIN_NODE_];
  main[? vis] = false;
 
  return tree;
  