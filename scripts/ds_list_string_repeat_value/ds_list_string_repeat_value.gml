
  /// @function ds_list_string_repeat_value(list, repeat_cnt, value)
  
  /// @arg list
  /// @arg amount
  /// @arg value
  
  /*
      description :

        The script uses the "string_repeat" function for all 
        those lines of a certain type that are in the list.
          
      arguments / parametrs :
      
          [0] - {  real  } - List.  
          [1] - {  real  } - Amount
          [2] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var amount  = argument1;
  var cmp_val = argument2;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];
    if is_string(value) && (cmp_val == value)
    {
      value = string_repeat(value, amount);          
      ds_list_replace(list, i, value);
    }
  }
  