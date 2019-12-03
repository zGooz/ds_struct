
  /// @function ds_list_string_format_value(list, total, dec, value)
  
  /// @arg list
  /// @arg total
  /// @arg dec
  /// @arg value
  
  /*
      description :
          
        The script uses the "string_format" function for all 
        those lines of a certain type that are in the list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Total.
          [2] - { real } - Decdecimal.
          [3] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0; 
  var total   = argument1;
  var dec     = argument2;
  var cmp_val = argument3;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value   = list[| i];    
    if is_string(value) && (cmp_val == value)
    {          
      value = string_format(value, total, dec);          
      ds_list_replace(list, i, value);
    }
  }
  