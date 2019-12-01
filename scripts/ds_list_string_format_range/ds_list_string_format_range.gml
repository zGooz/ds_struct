
  /// @function ds_list_string_format_range(list, pos, count, total, dec)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg total
  /// @arg dec
  
  /*
      description :
          
          ...
          
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
    var value   = list[| i];    
    var new_pos = pos + i;
    
    if is_string(value)
    {          
      value = string_format(value, total, amount);          
      ds_list_replace(list, new_pos, value);
    }
  }
  