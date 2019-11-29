
  /// @function ds_list_power_range(list, pos, count, power)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg power
  
  /*
      description :
          
          ...
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.    
          [3] - { real } - Factor number.
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var count = argument2;  
  var pow_r = argument3;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value   = list[| i];
    var new_pos = pos + i;
    
    if is_real(value)
        ds_list_replace(list, new_pos, power(value, pow_r));
  }
  