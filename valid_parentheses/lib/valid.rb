class Valid

  def valid_parentheses(string)
    simple_string = string.delete('^()').split("")
    if simple_string.length % 2 == 1 || simple_string[0] == ")" || simple_string.count("(") != simple_string.count(")")
      false
    elsif simple_string == []
      true
    else
      require "pry"; binding.pry
    end
  end

end
