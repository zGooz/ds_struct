
  /// @function ds_list_delete_range_value(list, pos, count, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg value
  
  /*
      description :
      
          The script removes certain values from the list, 
          looking for them at a specific interval.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.
          [3] - { real / string } - Value.
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var value = argument3;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = _min; i > max(0, pos - 1); i--;)
  {
    var val = list[| i];
    if val == value
    {
      ds_list_delete(list, pos);
    }
  }
  