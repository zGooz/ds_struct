
  /// @function ds_list_cut_step_value(list, pos, step, value)
  
  /// @arg list
  /// @arg pos
  /// @arg step
  /// @arg value
  
  /*
      description :
          
          Deletes specific values, after a 
          certain step, starting from a certain position. 
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Step.
          [3] - { real / string } - value
          
      return : n/a
  */
  
  var list  = argument0;
  var pos   = argument1;
  var step  = argument2;
  var value = argument3;
  
  for (var i = pos; i > -1; i -= step;)
  {
    var val = list[| i];
    if val == value 
    {
      ds_list_delete(list, i);
    }
  }
  