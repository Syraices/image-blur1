class Image

  def initialize(image)
    @image = image
  end

  def output_image
    
    c = blur(blur(blur(@image)))
    c.each do |pr|
      puts pr.join
    end  
  end


  def blur(array)
    b = []
    array.each_index do|i|
      a = array[i]
      c = []
      a.each_index do |j|
       
        if a[j] == 1
          c[j] = 1
          if j - 1 >= 0
            c[j - 1] = 1
          end
          if j + 1 < a.length
            c[j + 1] = 1
          end
          if i - 1 >= 0  
            b[i - 1][j] = 1
          end
        end

        if array[i - 1][j] == 1 && i > 0 
          c[j] = 1
        end

        if c.length != a.length
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