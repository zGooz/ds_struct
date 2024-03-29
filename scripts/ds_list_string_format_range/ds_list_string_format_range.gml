
  /// @function ds_list_string_format_range(list, pos, count, total, dec)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg total
  /// @arg dec
  
  /*
      description :
          
          The script uses the function "string_format" with respect to all 
          lines from a given interval that belongs to the list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.   
          [3] - { real } - Total.
          [4] - { real } - Decdecimal.
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var total = argument3;
  var dec   = argument4;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];   
    if is_string(value)
    {          
      value = string_format(value, total, dec);          
      ds_list_replace(list, i, value);
    }
  }
  