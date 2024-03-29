
  /// @function ds_list_string_copy_range_value(list, pos, count, sym_index, sym_amount, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg sym_index
  /// @arg sym_amount
  /// @arg value
  
  /*
      description :
          
          Performs on all string values in the list that 
          lie in a certain interval, the function "string_copy".
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.   
          [3] - { real } - Symbol index.
          [4] - { real } - Symbol amount.
          [5] - { string } - Value;
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var index   = argument3;
  var amount  = argument4;
  var cmp_val = argument5;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      var str_len = string_length(value);
      var cnt     = min(amount, str_len - index);
          value   = string_copy(value, index, cnt);
          
      ds_list_replace(list, i, value);
    }
  }
  