
  /// @function ds_list_increase_value(list, value, additive)
  
  /// @arg list
  /// @arg value
  /// @arg additive
  
  /*
      description :
          
          Adds a certain number to the specific value from the list.
          
      arguments / parametrs :
      
      
          [0] - { real } - List.
          [1] - { real } - Value.
          [2] - { real } - Additive.
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1; 
  var add     = argument2;
  
  if typeof(cmp_val) == typeof(add)
  {
    for (var i = 0; i < ds_list_size(list); i++;)
    {
      var value = list[| i];
      if value == cmp_val
      {
        ds_list_replace(list, i, value + add);
      }
    }
  }
  