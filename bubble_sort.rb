require_relative 'shared/get_input.rb'
  
def bubble_sort(nums)
  n = nums.length
  return nums if n < 2
  flag = true

  while flag 
    flag = false
    (0...n-1).each do |i|
      if nums[i] > nums[i+1]
        nums[i], nums[i+1] = nums[i+1], nums[i]
        flag = true
      end
    end
    n -= 1
  end
  nums
end

def input_to_nums_arr(numbers)
  numbers.split(',').map { |num| num.strip.to_i }
end

nums_arr = input_to_nums_arr(get_input('Give me a list of numbers separated by commas:'))
puts bubble_sort(nums_arr)