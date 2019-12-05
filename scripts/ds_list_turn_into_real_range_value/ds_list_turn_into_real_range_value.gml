
  /// @function ds_list_turn_into_real_range_value(list, pos, count, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg value
  
  /*
      description :
          
          translates all the values in the list that lie in a 
          certain interval into a number, if conversion is possible.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count. 
          [3] - { real / string } - Value.
          
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
      if value == "" continue;
      ds_list_replace(list, i, real(value));
    }
  }
  