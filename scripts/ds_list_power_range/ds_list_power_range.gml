
  /// @function ds_list_power_range(list, pos, count, power)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg power
  
  /*
      description :
          
          Raises an arbitrary fragment of the list to a certain degree.
          
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
    var value = list[| i];
    if is_real(value)
    {
      ds_list_replace(list, i, power(value, pow_r));
    }
  }
  