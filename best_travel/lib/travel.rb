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
    id = 1
    sum_hash = {}
    sum_hash[id] = (distances + distances)
    (max_towns - 1).times {
      id += 1
      sum_hash[id] = (distances.rotate(id - 1) + distances.rotate(id))
    }
    header, *rows = sum_hash.values
    sums_arrays = header.zip(*rows)
    sums = sums_arrays.map do |sum_array|
      sum_array.flatten.sum
    end
    sums.sort.reverse.find do |sum|
      sum <= max_sum
    end
  end

end
