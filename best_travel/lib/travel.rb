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
    sum_hash[id] = (distances * (distances.length / 2))
    (max_towns - 1).times {
      id += 1
      sum_hash[id] = distance_rows(distances, id, (distances.length / 2))
    }
    header, *rows = sum_hash.values
    sums_arrays = header.zip(*rows)
    sums = sums_arrays.map do |sum_array|
      sum_array.flatten.sum
    end.uniq
    sums.sort.reverse.find do |sum|
      sum <= max_sum
    end
  end

  def distance_rows(distances, id, number, rotated_distances = [distances.rotate(id)])
    if rotated_distances.length != distances.length * number && rotated_distances.length != distances.length
      if rotated_distances == []
        complete?(distances, id, number, rotated_distances)
      else
        complete?(distances, id, number, rotated_distances)
      end
    else
      rotated_distances.flatten
    end
  end

  def complete?(distances, id, number, rotated_distances)
    id += 1
    rotated_distances << distances.rotate(id)
    if rotated_distances.flatten.length == distances.length * number
      rotated_distances.flatten
    else
      distance_rows(distances, id, number, rotated_distances.flatten)
    end
  end
end
