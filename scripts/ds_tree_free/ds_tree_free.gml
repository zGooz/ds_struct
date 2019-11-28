
  /// @function ds_tree_free(tree)
  
  /// @arg tree
  
  /*
      description :
      
          Deletes a tree structure, freeing the allotted
          under her memory. A tree identifier is required for deletion.
          
      return : 
      
          real [tree id] <ds map>
  */
  
  var tree = argument0;  
  var main = tree[? __DS_TREE_MAIN_NODE_];
  ds_tree_destroy_member(main);
  ds_map_destroy(tree);
  