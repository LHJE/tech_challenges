class Strings

  def mix(s1, s2)
    s1_array = s1.delete('^a-z').split('').sort
    s2_array = s2.delete('^a-z').split('').sort


    require "pry"; binding.pry
  end

end
