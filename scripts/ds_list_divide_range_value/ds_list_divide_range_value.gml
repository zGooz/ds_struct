
  /// @function ds_list_divide_range_value(list, pos, count, div, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg factor
  /// @arg value
  
  /*
      description :
          
          divides all the numerical values in the list 
          that lie in a certain interval by a certain number.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.    
          [3] - { real } - Factor number.
          [4] - { real } - Value.
          
      return : n/a
  */
  
  var list    = argument0;
  var pos     = argument1;
  var count   = argument2;  
  var div_r   = argument3;
  var cmp_val = argument4;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      ds_list_replace(list, i, value / div_r);
    }
  }
  