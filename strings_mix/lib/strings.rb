class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}.delete_if {|letters| letters.length == 1 }
    s2_array = s2.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}.delete_if {|letters| letters.length == 1 }
    results = []

    s1_array.map do |letters|
      results << "1:#{letters}"
    end

    s2_array.map do |letters|
      results << "2:#{letters}"
    end

    require "pry"; binding.pry

  end

end
