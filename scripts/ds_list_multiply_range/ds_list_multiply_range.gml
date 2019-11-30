
  /// @function ds_list_multiply_range(list, pos, count, mul_real)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg factor <real>
  
  /*
      description :
          
          Multiplies each element of the list by a certain number, 
          if the value is a string, then this string is duplicated and added to itself.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.    
          [3] - { real } - Factor number.
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var mul_r = argument3;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value   = list[| i];
    var new_pos = pos + i;
    
    if is_real(value)
        ds_list_replace(list, new_pos, value * mul_r);
    else if is_string(value)
    {
        value = string_repeat(value, mul_r);
        ds_list_replace(list, new_pos, value);
    }
  }
  