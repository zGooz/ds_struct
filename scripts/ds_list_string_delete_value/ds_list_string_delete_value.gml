
  /// @function ds_list_string_delete_value(list, sym_index, sym_amount, value)
  
  /// @arg list
  /// @arg sym_index
  /// @arg sym_amount
  /// @arg value
  
  /*
      description :
          
        The script uses the "string_delete" function for all 
        those lines of a certain type that are in the list.
          
      arguments / parametrs :
      
          [0] - { real } - List. 
          [1] - { real } - Symbol index.
          [2] - { real } - Symbol amount.
          [3] - { string } - value.
          
      return : n/a
  */
  
  var list    = argument0; 
  var index   = argument1;
  var amount  = argument2;
  var cmp_val = argument3;
  
  for (var i = 0; i < ds_list_size(list); i++;)
  {
    var value = list[| i];    
    if is_string(value) && (value == cmp_val)
    {
      var str_len = string_length(value);
      var cnt     = min(amount, str_len - index);
          value   = string_delete(value, index, cnt);
          
      ds_list_replace(list, i, value);
    }
  }
  