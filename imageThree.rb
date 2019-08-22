class Image

  def initialize(image)
    @image = image
  end

  def output_image
    
    final_array = blur(blur(blur(@image)))
    final_array.each do |pr|
      puts pr.join
    end  
  end


  def blur(array)
    blurred = []
    array.each_index do|row|
      a = array[row]
      col_array = []
      a.each_index do |col|
       
        if a[col] == 1
          col_array[col] = 1
          if col - 1 >= 0
            col_array[col - 1] = 1
          end
          if col + 1 < a.length
            col_array[col + 1] = 1
          end
          if row - 1 >= 0  
            blurred[row - 1][col] = 1
          end
        end

        if array[row - 1][col] == 1 && row > 0 
          col_array[col] = 1
        end

        if col_array.length != a.length
          col_array << 0
        end

      end
      blurred << col_array
    end
    return blurred
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