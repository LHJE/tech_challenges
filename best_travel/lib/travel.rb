class Travel

  def initialize
  end

  def choose_best_sum(max_sum, max_towns, distances)
    if max_sum.nil? || max_sum < 0 || max_towns.nil? || max_towns < 1 || distances.nil? || distances == []
      nil
    else
      best_sum_helper(max_sum, max_towns, distances)
    end
  end

  def best_sum_helper(max_sum, max_towns, distances)


  end

end
