
  /// @function ds_list_cut_step(list, pos, step, [dir])
  
  /// @arg list
  /// @arg pos
  /// @arg step
  /// @arg [dir]
  
  /*
      description :
          
          Deletes items through a specific step,
          starting from a certain position.
          
      arguments / parametrs :
      
          [0] - { real } - List.
          [1] - { real } - Position.
          [2] - { real } - Step.
          [3] - { real } - Direction (not necessary).
          
      return : n/a
  */
  
  var list = argument[0];
  var pos  = argument[1];
  var step = argument[2];
  var dir  = argument_count > 3 ? argument[3] : __DS_LIST_END_TO_BEGIN;
  
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
        ds_list_delete(list, i);
      } break;
  
  case __DS_LIST_END_TO_BEGIN :
  
      var _end = min(size - 1, pos);
      for (var i = 0; i < _end; i += step;)
      {
        if is_undefined(list[| i])
        {
          break;
        }
        ds_list_delete(list, i);
      } break;  
  }
  