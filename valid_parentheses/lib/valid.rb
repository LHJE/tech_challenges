class Valid

  def valid_parentheses(string)
    simple_string = string.delete('^()')
    if simple_string.length % 2 == 1
      false
    else
      require "pry"; binding.pry
    end
  end

end
