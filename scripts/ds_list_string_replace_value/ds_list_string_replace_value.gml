
  /// @function ds_list_string_replace_value(list, sub_str, mew_sub_str, value)
  
  /// @arg list
  /// @arg sub_str
  /// @arg mew_sub_str
  /// @arg value
  
  /*
      description :
          
        The script uses the "string_replace" function for all 
        those lines of a certain type that are in the list.
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - { string } - String for replace.
          [2] - { string } - Sctring to change.
          [3] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var str     = argument1;
  var mew_str = argument2;
  var cmp_val = argument3;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];
    if is_string(value) && (cmp_val == value)
    {
      value = string_replace(value, str, mew_str);          
      ds_list_replace(list, i, value);
    }
  }
  