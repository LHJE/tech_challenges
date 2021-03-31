class Valid

  def valid_parentheses(string)
    simple_string = string.delete('^()').split("")
    if simple_string.length % 2 == 1 || simple_string[0] == ")" || simple_string.count("(") != simple_string.count(")")
      false
    elsif simple_string == []
      true
    else
      id = 0
      result = true
      simple_string.each do |character|
        if character == "("
          id += 1
        elsif character == ")" && id != 0
          id -= 1
        else
          result = false
        end
      end
      result
    end
  end

end
