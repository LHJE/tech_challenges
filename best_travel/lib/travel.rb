class Travel

  def initialize
  end

  def choose_best_sum(max_sum, max_towns, distances)
    if max_sum.nil? || max_sum < 0 || max_towns.nil? || max_towns < 1 || distances.nil? || max_towns > distances.length || distances == []
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
      sum_hash[id] = make_distance_rows(distances, id, (distances.length / 2))
    }
    sums = get_sums(sum_hash)
    final_sum(sums, max_sum)
  end

  def make_distance_rows(distances, id, number, rotated_distances = [distances.rotate(id)])
    id += 1
    rotated_distances << distances.rotate(id)
    if rotated_distances.flatten.length == distances.length * number
      rotated_distances.flatten
    else
      make_distance_rows(distances, id, number, rotated_distances.flatten)
    end
  end

  def get_sums(sum_hash)
    header, *rows = sum_hash.values
    sums_arrays = header.zip(*rows)
    sums_arrays.map do |sum_array|
      sum_array.flatten.sum
    end.uniq
  end

  def final_sum(sums, max_sum)
    final_sum = []
    sums.sort.reverse.find do |sum|
      if sum <= max_sum
        final_sum << sum
      end
    end
    final_sum[0]
  end
end
