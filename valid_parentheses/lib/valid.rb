class Valid
  def valid_parentheses(string)
    simple_string = string.delete('^()').split('')
    id = 0
    result = true
    simple_string.each do |character|
      if character == '(' && simple_string.length != 1 && simple_string.length.even? && simple_string.count('(') == simple_string.count(')')
        id += 1
      elsif character == ')' && id != 0
        id -= 1
      else
        result = false
      end
    end
    result
  end
end
