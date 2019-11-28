
  /// @function ds_list_replace_range(list, pos, count)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  
  /*
      description :
      
          Changes the value of several items from the list at once.
          
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.          
          
      return : n/a
  */
  
  var list   = argument0;
  var source = argument1;
  var pos    = argument2;
  var count  = argument3;  
  var _min   = min(pos + count, ds_list_size(list));  
  var j      = 0;
  
  for (var i = 0; i < _min; i++;)
  {
    var s_val = source[| j++];  
    ds_list_replace(list, pos + i, s_val);
  }
  