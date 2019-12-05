
  /// @function ds_list_string_replace_all_range_value(list, pos, count, str, mew_str, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg str
  /// @arg mew_str
  /// @arg value
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - {  real  } - Position.
          [2] - {  real  } - Count.   
          [3] - { string } - String for replace.
          [4] - { string } - Sctring to change.
          [5] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;
  var str     = argument3;
  var mew_str = argument4;
  var cmp_val = argument5;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      value = string_replace_all(value, str, mew_str);          
      ds_list_replace(list, i, value);
    }
  }
  