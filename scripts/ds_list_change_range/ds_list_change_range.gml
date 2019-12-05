
  /// @function ds_list_change_range(list, pos, count)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  
  /*
      description :
          
          Replaces a specific fragment of a list with another list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.            
          
      return : n/a
  */
  
  var list   = argument0;
  var source = argument1;
  var pos    = argument2;
  var count  = argument3;  
  
  ds_list_delete_range(list, pos,    count);
  ds_list_insert_list(list,  source, count);
  