
  /// @function ds_list_cut_value(list, val)
  
  /// @arg list
  /// @arg value
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Value.
          
      return : n/a
  */
  
  var list  = argument0;
  var value = argument1;
  
  for (var i = ds_list_size(list); i > -1; i--;)
  {
    var tmp_val = list[| i];
    if tmp_val == value
    {
      ds_list_delete(list, i);
    }
  }
  