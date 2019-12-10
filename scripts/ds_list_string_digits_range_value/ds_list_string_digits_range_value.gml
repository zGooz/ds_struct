
  /// @function ds_list_string_digits_range_value(list, pos, count, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg value
  
  /*
      description :
          
          Performs on all string values in the list that 
          lie in a certain interval, the function "string_digits".
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.   
          [3] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var cmp_val = argument3;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      value = string_digits(value);          
      ds_list_replace(list, i, value);
    }
  }
  