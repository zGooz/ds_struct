
  /// @function ds_list_replace_all(list, val, new_val)
  
  /// @arg list
  /// @arg value
  /// @arg new value
  
  /*
      description :
          
          Replace one value in the list with another list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real / string } - Value.
          [2] - { real / string } - New value.
          
      return : n/a
  */
  
  var list  = argument0;
  var value = argument1;
  var n_val = argument2; 
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var tmp_val = list[| i];
    if tmp_val == value
    {
      ds_list_replace(list, i, n_val);
    }
  }
  