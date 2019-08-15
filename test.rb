class Image

  def initialize(image)
    @image = image
  end

  def output_image
    a = blurTwoD(@image)
    b = []

    a.each do |i|
      puts blur(i).join
    end
    
  end

  def blurTwoD(a)
    f = []
    a.each_index do |i|
      e = a[i]
      b = a[i + 1]
      d = a[i - 1]
      c = []
      e.each_index do |j|
        if (b && b[j] == 1) || (d[j] >= 0 && d[j] == 1) || e[j] == 1
          c[j] = 1
        else 
          c << 0
        end
      end
      f << c
    end   
    return f
  end

  def blur(a)
    
    c = []
    a.each_index do |j|
      b = j - 1
      d = j + 1
      if (j > 0 && a[b] == 1) || (a[d] && a[d] == 1) || a[j] == 1
        c << 1 
      else
        c << 0
      end
    end
    return c
  end


end




image = Image.new([
  [0,0,0,0,0,0,0,0,0], 
  [0,0,0,1,0,0,0,0,0],
  [0,0,0,0,0,0,1,0,0],
  [0,0,0,0,0,0,0,0,0]
  ]
)
image.output_image