class OddInt

  def find_it(array)
    id = 0
    result = 0
    array.sort.each do |unit|
      if unit == array.sort[id + -1] && unit == array.sort[id + +1] || unit != array.sort[id + -1] && unit != array.sort[id + +1]
        result += unit
      end
      id += 1
    end
    result
  end

end
