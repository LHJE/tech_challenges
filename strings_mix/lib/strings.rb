class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}.delete_if {|letters| letters.length == 1 }
    s2_array = s2.delete('^a-z').split('').sort.join('').chars.chunk(&:itself).map{|x|x.last.join}.delete_if {|letters| letters.length == 1 }
    results = []
    end_results = []
    equals = []
    s1_array.map do |letters|
      results << "1:#{letters}"
    end

    s2_array.map do |letters|
      results << "2:#{letters}"
    end

    results.sort_by(&:length).reverse.each do |string|
      to_compare = results.select{|word| word.include?(string[-1])}
      if to_compare.length == 1
        end_results << to_compare[0]
      elsif to_compare[0].length != to_compare[1].length
        end_results << to_compare.max_by(&:length)
      else
        equals << "=:#{to_compare[0][2..-1]}"
      end
    end
    end_results << equals.uniq.sort

    # end_results.flatten.uniq.sort_by(&:length).reverse
    result_hash = {}
    end_results.flatten.uniq.each do |result|
      if result_hash[result.length - 2].nil?

        result_hash[result.length - 2] = [result]
      else
        result_hash[result.length - 2] << result
      end
    end

    
    require "pry"; binding.pry
    # end_results.flatten.uniq.sort.join("/")
  end

end
