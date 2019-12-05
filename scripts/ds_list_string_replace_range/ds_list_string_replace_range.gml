
  /// @function ds_list_string_replace_range(list, pos, count, str, mew_str)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg str
  /// @arg mew_str
  
  /*
      description :
          
          The script uses the function "string_replace" with respect to all 
          lines from a given interval that belongs to the list.
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - {  real  } - Position.
          [2] - {  real  } - Count.   
          [3] - { string } - String for replace.
          [4] - { string } - Sctring to change.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;
  var str     = argument3;
  var mew_str = argument4;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if is_string(value)
    {
      value = string_replace(value, str, mew_str);          
      ds_list_replace(list, i, value);
    }
  }
  