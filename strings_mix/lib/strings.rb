class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}
    s2_array = s2.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}

    s1_array.delete_if do |letters|
      letters.length == 1
    end
    s2_array.delete_if do |letters|
      letters.length == 1
    end

    require "pry"; binding.pry

  end

end
