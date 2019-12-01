
  /// @function ds_list_string_delete_range(list, pos, count, sym_index, sym_amount)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg sym_index
  /// @arg sym_amount
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.   
          [3] - { real } - Symbol index.
          [4] - { real } - Symbol amount.
          
      return : n/a
  */
  
  var list   = argument0;
  var pos    = argument1;
  var count  = argument2;  
  var index  = argument3;
  var amount = argument4;
  var _min   = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value   = list[| i];
    var new_pos = pos + i;
    
    if is_string(value)
    {
      var str_len = string_length(value);
      var cnt     = min(amount, str_len - index);
          value   = string_delete(value, index, cnt);
          
      ds_list_replace(list, new_pos, value);
    }
  }
  