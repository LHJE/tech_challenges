class OddInt

  def find_it(array)
    if array.count == 1
      array[0]
    else
      id = -1
      array.sort.find do |unit|
        id += 1
        if unit == array.sort[id + -1] && unit == array.sort[id + +1] || unit != array.sort[id + -1] && unit != array.sort[id + +1]
          unit
        end
      end
    end
  end

end
