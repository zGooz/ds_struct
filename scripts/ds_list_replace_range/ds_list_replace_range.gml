
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
  var j_ind  = 0;
  
  for (var i = pos; i < _min; i++;)
  {
    var s_val = source[| j_ind ++];  
    ds_list_replace(list, i, s_val);
  }
  