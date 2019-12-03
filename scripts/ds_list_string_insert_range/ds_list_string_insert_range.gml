
  /// @function ds_list_string_insert_range(list, pos, count, str, place)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg str
  /// @arg place
  
  /*
      description :
          
          The script uses the function "string_insert" with respect to all 
          lines from a given interval that belongs to the list.
          
      arguments / parametrs :
      
          [0] - {  real  } - List.
          [1] - {  real  } - Position.
          [2] - {  real  } - Count.   
          [3] - { string } - String for inserting.
          [4] - {  real  } - Place to insert.
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;
  var str   = argument3;
  var place = argument4;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value   = list[| i];
    var new_pos = pos + i;
    
    if is_string(value)
    {
      value = string_insert(str, value, place);          
      ds_list_replace(list, new_pos, value);
    }
  }
  