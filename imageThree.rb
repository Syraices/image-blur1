class Image

  def initialize(image)
    @image = image
  end

  def output_image
    
    c = blur(blur(@image))
    c.each do |pr|
      puts pr.join
    end  
  end


  def blur(z)
    b = []
    z.each_index do|i|
      a = z[i]
      d = z[i + 1]
      e = z[i - 1]
      c = []
      x = 0
      a.each_index do |j|
        if a[j] == 1
          c[j] = 1
          if j - 1 >= 0
            c[j - 1] = 1
          end
          if j + 1 < a.length
            c[j + 1] = 1
          end
        elsif (d && d[j] == 1) || (i > 0 && e[j] == 1)
          c[j] = 1
        elsif c.length != a.length
          c << 0
        end
      end
      b << c
    end
    return b
  end
end




image = Image.new([
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,1,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,1]
])
image.output_image