
  /// @function ds_list_string_digits_value(list, value)
  
  /// @arg list
  /// @arg value
  
  /*
      description :
          
        The script uses the "string_digits" function for all 
        those lines of a certain type that are in the list.
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - { string } - Value.  
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];
    if is_string(value) && (cmp_val == value)
    {
      value = string_digits(value);          
      ds_list_replace(list, i, value);
    }
  }
  