
  /// @function ds_list_decrease_range(list, pos, count, dec_real, dec_str)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg decrease <real>
  /// @arg decrease <string>
  
  /*
      description :
          
          Deletes a certain number (string) 
          from each list item, from a given interval.
          
      arguments / parametrs :
      
          [0] - { real   } - List.
          [1] - { real   } - Position.
          [2] - { real   } - Count.     
          [3] - { real   } - Decrease number.
          [4] - { string } - Decrease string. [Unconcatenation].
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var sub_r = argument3;
  var sub_s = argument4;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if is_real(value)
        ds_list_replace(list, i, value - sub_r);
    else if is_string(value)
    {
        value = string_replace_all(value, sub_s, "");
        ds_list_replace(list, i, value);
    }
  }
  