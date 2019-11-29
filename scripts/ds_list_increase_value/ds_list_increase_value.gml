
  /// @function ds_list_increase_value(list, new_val, [val], [val0], ..., [valN])
  
  /// @arg list
  /// @arg new value
  /// @arg val0
  /// @arg val1
  /// @arg ...
  /// @arg valN
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - New value.
          [2] - { real / string } - val0.
          [3] - { real / string } - val1.
          
          ... ... ... ... ... ... ... ...
          
          [n] - { real / string } - valN.
          
      return : n/a
  */
  
  var list    = argument0;
  var cmp_val = argument1; 
  var add     = argument3;
  
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
  