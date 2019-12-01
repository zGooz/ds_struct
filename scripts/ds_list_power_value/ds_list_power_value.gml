
  /// @function ds_list_power_value(list, value, power)
  
  /// @arg list
  /// @arg value
  /// @arg power
  
  /*
      description :
      
          Introduces to some extent the specific value from the list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Value.
          [2] - { real } - Power.
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1; 
  var pow_r   = argument2;
  
  if (typeof(cmp_val) == typeof(pow_r)) && is_real(cmp_val)
  {
    for (var i = 0; i < ds_list_size(list); i++;)
    {
      var value = list[| i];
      if value == cmp_val
      {
          ds_list_replace(list, i, power(value, pow_r));
      }
    }
  }
  