
  /// @function ds_list_multiply_range_value(list, pos, count, mul_real, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg factor <real>
  /// @arg value
  
  /*
      description :
          
          Multiplies each numeric value
          by a certain number, if the value is a string, then the value is replaced 
          by a string copied exactly as many times as specified in the multiplier.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.    
          [3] - { real } - Factor number.
          [4] - { real / string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var mul_r   = argument3;
  var cmp_val = argument4;
  var _min    = min(pos + count, ds_list_size(list));
  
  if is_real(cmp_val)
  {
      for (var i = pos; i < _min; i++;)
      {
        var value = list[| i]; 
        if value == cmp_val
        {
          ds_list_replace(list, i, value * mul_r);
        }
      }
  }
  else if is_string(cmp_val)
  {
      for (var i = pos; i < _min; i++;)
      {
        var value = list[| i]; 
        if value == cmp_val
        {
          value = string_repeat(value, mul_r);
          ds_list_replace(list, i, value);
        }
      }
  }