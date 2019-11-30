
  /// @function ds_list_multi_replace_all(list, new_val, [val], [val0], ..., [valN])
  
  /// @arg list
  /// @arg new value
  /// @arg val0
  /// @arg val1
  /// @arg ...
  /// @arg valN
  
  /*
      description :
          
          Replace the specific value with a specific value.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - New value.
          [2] - { real / string } - val0.
          [3] - { real / string } - val1.
          
          ... ... ... ... ... ... ... ...
          
          [n] - { real / string } - valN.
          
      return : n/a
  */
  
  var list  = argument[0];
  var n_val = argument[1]; 
  
  for (var i = 2; i < argument_count; i++;)
  {
    ds_list_replace_all(list, argument[i], n_val);
  }
  