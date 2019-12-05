
  /// @function ds_list_increase_range_value(list, pos, count, add, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg additive
  /// @arg value
  
  /*
      description :
          
          Adds a certain number to each numerical value lying in a certain 
          fragment of the list. If we add the value of a string, 
          then it concatonates with all the term values in the specified interval.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.    
          [3] - { real / string } - Additive.
          [4] - { real / string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var add     = argument3;
  var cmp_val = argument4;
  var _min    = min(pos + count, ds_list_size(list));
  
  if is_real(cmp_val)
  {
      for (var i = pos; i < _min; i++;)
      {
        var value = list[| i];
        if cmp_val == value
        {
          ds_list_replace(list, i, value + add);
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
          ds_list_replace(list, i, value + add);
        }
      }
  }
  