class OddInt

  def find_it(array)
    array.sort.each do |unit|
      require "pry"; binding.pry
      if unit == array.sort[array.sort.index(unit) + -1] && unit == array.sort[array.sort.index(unit) + +1] || unit != array.sort[array.sort.index(unit) + -1] && unit != array.sort[array.sort.index(unit) + +1]
        require "pry"; binding.pry
      end
    end
  end

end
