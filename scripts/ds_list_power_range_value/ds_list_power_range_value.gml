
  /// @function ds_list_power_range_value(list, pos, count, power, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg power
  /// @arg value
  
  /*
      description :
          
          raises all the numerical values in the list 
          that lie in a certain interval, to a certain degree.
          
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
  var pow_r   = argument3;
  var cmp_val = argument4;
  var _min    = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if cmp_val == value
    {
      ds_list_replace(list, i, power(value, pow_r));
    }
  }
  