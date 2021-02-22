class Alphabet

  def initialize
  end

  def remove_duplicates(string)
    if string.length == 1
      string
    else
      duplicate_helper(string.split(''), string.split('').length)
    end
  end

  def duplicate_helper(string_array, last_length)
    result_array = []
    until string_array == []
      string_array.each do |element|
        if string_array[string_array.index(element)] != string_array[string_array.index(element) + 1]
          result_array << element
          string_array.shift
          break
        else
          2.times {string_array.shift }
          break
        end
      end
    end
    if result_array.length != last_length
      duplicate_helper(result_array, result_array.length)
    else
      result_array.join('')
    end
  end
end
