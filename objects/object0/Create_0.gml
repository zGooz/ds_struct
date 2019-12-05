
  draw_set_font(fnt_small_arial);
  draw_set_color(c_white);
  randomize();
  
  grid = ds_grid_create(10, 10);
  
  for (var i = 0; i < ds_grid_width(grid); i++;)
    for (var j = 0; j < ds_grid_height(grid); j++;)
    {
      grid[# i, j] = choose("cat", "dog", "bird", "wolf");
    }
  