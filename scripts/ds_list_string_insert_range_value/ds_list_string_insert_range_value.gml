
  /// @function ds_list_string_insert_range_value(list, pos, count, str, place, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg str
  /// @arg place
  /// @arg value
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - {  real  } - Position.
          [2] - {  real  } - Count.   
          [3] - { string } - String for inserting.
          [4] - {  real  } - Place to insert.
          [5] - { string } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;
  var str     = argument3;
  var place   = argument4;
  var cmp_val = argument5;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      value = string_insert(str, value, place);          
      ds_list_replace(list, i, value);
    }
  }
  