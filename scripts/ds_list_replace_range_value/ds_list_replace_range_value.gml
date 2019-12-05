
  /// @function ds_list_replace_range_value(list, pos, count, value)
  
  /// @arg list
  /// @arg pos
  /// @arg count
  /// @arg value
  
  /*
      description :
      
          Replaces a specific value on a specific span of a list.     
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Count.          
          [3] - { real / string } - Value.
          
      return : n/a
  */
  
  var list   = argument0;
  var source = argument1;
  var pos    = argument2;
  var count  = argument3;  
  var value  = argument4;
  var _min   = min(pos + count, ds_list_size(list));  
  var j_ind  = 0;
  
  for (var i = pos; i < _min; i++;)
  {
    var s_val = source[| j_ind ++];  
    if value == list[| i]
    {
      ds_list_replace(list, i, s_val);
    }
  }
  