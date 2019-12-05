
  /// @function ds_list_increase_range(list, pos, count, add_real, add_str)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg additive <real>
  /// @arg additive <string>
  
  /*
      description :
          
          Adds to each element of the list, 
          from a given interval, a certain number (string).
          
      arguments / parametrs :
      
          [0] - { real   } - List.
          [1] - { real   } - Position.
          [2] - { real   } - Count.    
          [3] - { real   } - Additive number.
          [4] - { string } - Additive string. [Concatenation].
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var add_r = argument3;
  var add_s = argument4;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if is_real(value)
        ds_list_replace(list, i, value + add_r);
    else if is_string(value)
        ds_list_replace(list, i, value + add_s);
  }
  