
  /// @function ds_list_decrease_value(list, value, decrease)
  
  /// @arg list
  /// @arg value
  /// @arg decrease
  
  /*
      description :
          
          Subtracts a certain number from a specific value from the list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Value.
          [2] - { real } - Decrease.
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1; 
  var sub     = argument2;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];
    if value == cmp_val
    {
      if is_real(value)
          ds_list_replace(list, i, value - sub);
      else if is_string(value)
      {
          value = string_replace_all(value, sub, "");
          ds_list_replace(list, i, value);
      }
    }
  }
  