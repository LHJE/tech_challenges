class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort
    s2_array = s2.delete('^a-z').split('').sort
    s1_hash = {}
    s2_hash = {}
    result_hash = {"1" => "", "2" => "", "=:" => ""}
    s1_array.uniq.each do |character|
      s1_hash[character] = s1_array.count(character)
    end

    s2_array.uniq.each do |character|
      s2_hash[character] = s2_array.count(character)
    end

    s1_hash.each do |letter, amount|
      if !s2_hash[letter].nil?
        if amount > s2_hash[letter]
          amount.times do
            result_hash["1"] += letter
          end
        elsif amount < s2_hash[letter]
          s2_hash[letter].times do
            result_hash["2"] += letter
          end
        elsif amount = s2_hash[letter]
          amount.times do
            result_hash["=:"] += letter
          end
        end
      end
    end



    require "pry"; binding.pry

  end

end
