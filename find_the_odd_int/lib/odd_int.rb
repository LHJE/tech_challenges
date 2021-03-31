class OddInt

  def find_it(array)
    array.sort.find do |unit|
      if array.count(unit) % 2 == 1
        unit
      end
    end
  end

end
