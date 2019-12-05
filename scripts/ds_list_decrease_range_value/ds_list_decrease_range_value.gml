
  /// @function ds_list_decrease_range_value(list, pos, count, dec, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg decrease
  /// @arg value
  
  /*
      description :
          
          Subtracts a specific number from each numerical value lying in a 
          specific fragment of the list. If the replaced value is a string, 
          then it is isolated from all the term values in the specified interval.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.     
          [3] - { real / string } - Decrease.
          [4] - { real / string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var sub     = argument3;
  var cmp_val = argument4;
  var _min    = min(pos + count, ds_list_size(list));

  if is_real(cmp_val)
  {
      for (var i = pos; i < _min; i++;)
      {
        var value = list[| i];
        if cmp_val == value
        {
          ds_list_replace(list, i, value - sub);
        }
      }
  }
  else if is_string(cmp_val)
  {
      for (var i = pos; i < _min; i++;)
      {
        var value = list[| i];
        if cmp_val == value
        {
          value = string_replace_all(value, sub, "");
          ds_list_replace(list, i, value);
        }
      }
  }
  