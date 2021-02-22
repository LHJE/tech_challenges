class Travel

  def initialize
  end

  def choose_best_sum(max_sum, max_towns, distances)
    if max_sum.nil? || max_sum < 0 || max_towns.nil? || max_towns < 1 || max_towns > distances.length || distances.nil? || distances == []
      nil
    else
      best_sum_helper(max_sum, max_towns, distances)
    end
  end

  def best_sum_helper(max_sum, max_towns, distances)
    distances_2 = distances.rotate(1) + distances.rotate(2)
    distances_3 = distances.rotate(2) + distances.rotate(3)
    sums_arrays = (distances + distances).zip(distances_2).zip(distances_3)
    sums = sums_arrays.map do |sum_array|
      sum_array.flatten.sum
    end
    sums.sort.reverse.find do |sum|
      sum <= max_sum
    end
  end

end
