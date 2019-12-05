
  for (var i = 0; i < ds_grid_width(grid); i++;)
  {
    var xx = 32 + i * 64;
    for (var j = 0; j < ds_grid_height(grid); j++;)
    {
      var yy = 64 + j * 32;
      draw_text(xx, yy, grid[# i, j]);
    }
  }
