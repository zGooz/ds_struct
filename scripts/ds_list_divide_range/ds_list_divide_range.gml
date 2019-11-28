
  /// @function ds_list_divide_range(list, pos, count, div_real)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg factor <real>
  
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
  var pos   = argument2;
  var count = argument3;  
  var div_r = argument4;
  var _min  = min(pos + count, ds_list_size(list));
  
  for (var i = pos; i < _min; i++;)
  {
    var value   = list[| i];
    var new_pos = pos + i;
    
    if is_real(value)
        ds_list_replace(list, new_pos, value / div_r);
  }
  