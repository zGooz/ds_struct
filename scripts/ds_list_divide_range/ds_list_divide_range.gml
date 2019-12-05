
  /// @function ds_list_divide_range(list, pos, count, div_real)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg factor
  
  /*
      description :
          
          Divides each list item by a specific number.
          
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
  var div_r = argument3;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value = list[| i];
    if is_real(value)
    {
      ds_list_replace(list, i, value / div_r);
    }
  }
  