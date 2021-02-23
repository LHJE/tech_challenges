class Average

  def initialize
  end

  def get_grade(one, two, three)
    if (one + two + three) / 3 >= 90
      "A"
    elsif (one + two + three) / 3 < 60
      "F"
    elsif (one + two + three) / 3 < 70
      "D"
    elsif (one + two + three) / 3 < 80
      "C"
    else
      "B"
    end
  end
end
