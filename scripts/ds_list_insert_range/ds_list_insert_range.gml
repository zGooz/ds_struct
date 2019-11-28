
  /// @function ds_list_insert_range(list, source, pos)
  
  /// @arg list
  /// @arg source
  /// @arg pos
  
  /*
      description :
      
          Inserts several items at once into the list.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Source list
          [2] - { real } - Position.
          
      return : real [tree id] <ds map>
  */
  
  var list   = argument0
  var source = argument1;
  var pos    = argument2;
  
  for (var i = 0; i < ds_list_size(source); i++;)
  {
    var s_val = source[| i];
    ds_list_insert(list, pos, s_val);
  }
  