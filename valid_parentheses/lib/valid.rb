class Valid
  def valid_parentheses(string)
    ~ Regexp.new(string) == nil rescue false
  end
end
