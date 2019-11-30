
  /// @function ds_list_multiply_value(list, value, decrease)
  
  /// @arg list
  /// @arg value
  /// @arg factor
  
  /*
      description :
          
          Multiplies a specific value from a list by a certain number.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Value.
          [2] - { real } - Factor.
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1; 
  var mul_r   = argument3;
  
  if typeof(cmp_val) == typeof(mul_r)
  {
      for (var i = 0; i < ds_list_size(list); i++;)
      {
          var value = list[| i];
          if value == cmp_val
          {
            if is_real(value)
                ds_list_replace(list, i, value * mul_r);
            else if is_string(value)
            {
                value = string_repeat(value, mul_r);
                ds_list_replace(list, i, value);
            }
          }
      }
  }
  