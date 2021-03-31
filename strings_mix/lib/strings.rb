class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort
    s2_array = s2.delete('^a-z').split('').sort
    s1_hash = {}
    s2_hash = {}
    s1_array.uniq.each do |character|
      s1_hash[character] = s1_array.count(character)
    end

    s2_array.uniq.each do |character|
      s2_hash[character] = s2_array.count(character)
    end

    require "pry"; binding.pry
  end

end
