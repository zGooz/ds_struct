
  /// @function ds_list_divide_value(list, value, decrease)
  
  /// @arg list
  /// @arg value
  /// @arg factor
  
  /*
      description :
          
          Divides a specific value from a list by a certain number.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Value.
          [2] - { real } - Factor.
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1; 
  var div_r   = argument2;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];
    if value == cmp_val
    {
        ds_list_replace(list, i, value / div_r);
    }
  }
  