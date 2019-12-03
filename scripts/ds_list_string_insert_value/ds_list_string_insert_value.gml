
  /// @function ds_list_string_insert_value(list, str, place, value)
  
  /// @arg list
  /// @arg str
  /// @arg place
  /// @arg value
  
  /*
      description :
          
        The script uses the "string_insert" function for all 
        those lines of a certain type that are in the list.
          
      arguments / parametrs :
      
          [0] - {  real  } - List. 
          [1] - { string } - String for inserting.
          [2] - {  real  } - Place to insert.
          [3] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var str     = argument1;
  var place   = argument2;
  var cmp_val = argument3;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];
    if is_string(value) && (cmp_val == value)
    {
      value = string_insert(str, value, place);          
      ds_list_replace(list, i, value);
    }
  }
  