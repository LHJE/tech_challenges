class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}.delete_if {|letters| letters.length == 1 }
    s2_array = s2.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}.delete_if {|letters| letters.length == 1 }
    results = []
    end_results = []
    s1_array.map do |letters|
      results << "1:#{letters}"
    end

    s2_array.map do |letters|
      results << "2:#{letters}"
    end

    results.each do |string|
      to_compare = results.select{|word| word.include?(string[-1])}
      if to_compare.length == 1
        end_results << to_compare[0]
      elsif to_compare[0].length != to_compare[1].length
        end_results << to_compare.max_by(&:length)
      else
        end_results << "=:#{to_compare[0][2..-1]}"
      end
    end

    end_results.uniq.sort.join("/")

  end

end
