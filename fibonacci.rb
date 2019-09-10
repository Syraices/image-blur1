
def recursive_fib(number, fib=0, fib_two=0)
   if fib > 0
    old_fib = fib 
    fib = fib + fib_two
    fib_two = old_fib 
  else 
    fib = 1
    number = number - 1
  end  
  
  if number > 0
    recursive_fib(number - 1, fib, fib_two)
  else
    return fib
  end
end




def iterative_fib(number)
  fib = 0 
  fib_two = 0
  while number > 0
    if fib > 0 
      old_fib = fib 
      fib = fib + fib_two
      fib_two = old_fib
    else
      fib = 1
    end
    number = number -1
  end
  return fib
end
puts recursive_fib(35)
puts iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
