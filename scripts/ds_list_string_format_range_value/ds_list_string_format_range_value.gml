
  /// @function ds_list_string_format_range_value(list, pos, count, total, dec, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg total
  /// @arg dec
  /// @arg value
  
  /*
      description :
          
          Performs on all string values in the list that 
          lie in a certain interval, the function "string_format".
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.   
          [3] - { real } - Total.
          [4] - { real } - Decdecimal.
          [5] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var total   = argument3;
  var dec     = argument4;
  var cmp_val = argument5;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];   
    if cmp_val == value
    {          
      value = string_format(value, total, dec);          
      ds_list_replace(list, i, value);
    }
  }
  