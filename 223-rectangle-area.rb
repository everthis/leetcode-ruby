# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
  first_rect = (c - a) * (d - b)
  second_rect = (g - e) * (h - f)
  if c < e || g < a || b > h || f > d
    intersection_rect = 0 
  else
    intersection_rect = ([c, g].min - [a, e].max) * ([d, h].min - [b, f].max)
  end  
  first_rect + second_rect - intersection_rect
end
