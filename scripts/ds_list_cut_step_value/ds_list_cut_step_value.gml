
  /// @function ds_list_cut_step_value(list, pos, step, value, [dir])
  
  /// @arg list
  /// @arg pos
  /// @arg step
  /// @arg value
  /// @arg [dir]
  
  /*
      description :
          
          Deletes specific values, after a certain step, starting from a certain position. 
          This script works, from start to finish, and vice versa. 
          When working from start to finish, 
          it may skip some values (this is caused by a feature of GML).
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Step.
          [3] - { real / string } - value
          [3] - { real } - Direction (not necessary).
          
      return : n/a
  */
  
  var list  = argument[0];
  var pos   = argument[1];
  var step  = argument[2];
  var value = argument[3];
  var dir   = argument_count > 4 ? argument[4] : __DS_LIST_END_TO_BEGIN;
  
  switch dir 
  {
  case __DS_LIST_BEGIN_TO_END :
  case __DS_LIST_END_TO_BEGIN :
      break;
        
  default : dir = __DS_LIST_END_TO_BEGIN;
  }
  
  var size = ds_list_size(list);
  switch dir 
  {
  case __DS_LIST_BEGIN_TO_END :
  
      var start = max(0, size - pos - 1);
      for (var i = start; i > -1; i -= step;)
      {
        var val = list[| i];
        if val == value 
        {
          ds_list_delete(list, i);
        }
      } break;
  
  case __DS_LIST_END_TO_BEGIN :
  
      var _end = min(size - 1, pos);
      for (var i = 0; i < _end; i += step;)
      {
        var val = list[| i];
        if is_undefined(val)
        {
          break;
        }
        
        if val == value 
        {
          ds_list_delete(list, i);
        }
      } break;  
  }
  