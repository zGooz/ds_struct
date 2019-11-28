
  /// @function ds_list_delete_range(list, pos, count)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  
  /*
      description :
      
          Deletes several items from the list at once.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = 0; i < _min; i++;)
  {
    ds_list_delete(list, pos);
  }
  