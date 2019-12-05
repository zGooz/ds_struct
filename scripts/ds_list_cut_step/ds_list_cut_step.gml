
  /// @function ds_list_cut_step(list, pos, step)
  
  /// @arg list
  /// @arg pos
  /// @arg step
  
  /*
      description :
          
          Deletes items through a specific step,
          starting from a certain position.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Step.
          
      return : n/a
  */
  
  var list = argument0;
  var pos  = argument1;
  var step = argument2;
  
  for (var i = pos; i > -1; i -= step;)
  {
    ds_list_delete(list, i);
  }
  