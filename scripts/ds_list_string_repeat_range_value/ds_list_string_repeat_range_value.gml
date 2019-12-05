
  /// @function ds_list_string_repeat_range_value(list, pos, count, repeat_cnt, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg amount
  /// @arg value
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.   
          [3] - { real } - Amount
          [4] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;
  var amount  = argument3;
  var cmp_val = argument4;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      value = string_repeat(value, amount);          
      ds_list_replace(list, i, value);
    }
  }
  