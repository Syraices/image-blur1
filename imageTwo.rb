class Image

  def initialize(image)
    @image = image
  end

  def output_image(a)
    
    a.each do |pr|
      puts pr.join
    end  
  end

  def blur
    b = []
    @image.each_index do|i|
      a = @image[i]
      d = @image[i + 1]
      e = @image[i - 1]
      c = []
      a.each_index do |j|
        if a[j] == 1
          if j - 1 >= 0
            c[j - 1] = 1
          end
          c[j] = 1
          if j + 1 < a.length
            c[j + 1] = 1
          end
        elsif (d && d[j] == 1) || (e && e[j] == 1)
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
  [0, 0, 0, 0],
  [0, 0, 1, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0]
])
image.output_image(image.blur)