
  /// @function ds_list_string_lower_range(list, pos, count)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  
  /*
      description :
          
          The script uses the function "string_lower" with respect to all 
          lines from a given interval that belongs to the list.
          
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
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if is_string(value)
    {
      value = string_lower(value);          
      ds_list_replace(list, i, value);
    }
  }
  