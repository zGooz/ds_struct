
  /// @function ds_list_string_repeat_range(list, pos, count, repeat_cnt)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg amount
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - {  real  } - Position.
          [2] - {  real  } - Count.   
          [3] - { string } - Amount
          
      return : n/a
  */
  
  var list   = argument0;
  var pos    = argument1;
  var count  = argument2;
  var amount = argument3;
  var _min   = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value   = list[| i];
    var new_pos = pos + i;
    
    if is_string(value)
    {
      value = string_repeat(value, amount);          
      ds_list_replace(list, new_pos, value);
    }
  }
  