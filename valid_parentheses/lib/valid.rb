class Valid

  def valid_parentheses(string)
    simple_string = string.delete('^()')
    if simple_string.length % 2 == 1 || simple_string[0] == ")"
      false
    elsif simple_string == ""
      true
    else
      require "pry"; binding.pry
    end
  end

end
