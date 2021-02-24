class Alphabet

  def initialize
  end

  def alphabet_position(text)
    alphabet = ("abcdefghijklmnopqrstuvwxyz").split('')
    text.downcase.gsub!(/[^a-z]/, '').split('').map do |character|
      alphabet.index(character) + 1
    end.to_s.tr('[],', '')
  end
end
