class Code

  def self.morse_dict
		{
														"a" => ".-",
														"b" => "-...",
														"c" => "-.-.",
														"d" => "-..",
														"e" => ".",
														"f" => "..-.",
														"g" => "--.",
														"h" => "....",
														"i" => "..",
														"j" => ".---",
														"k" => "-.-",
														"l" => ".-..",
														"m" => "--",
														"n" => "-.",
														"o" => "---",
														"p" => ".--.",
														"q" => "--.-",
														"r" => ".-.",
														"s" => "...",
														"t" => "-",
														"u" => "..-",
														"v" => "...-",
														"w" => ".--",
														"x" => "-..-",
														"y" => "-.--",
														"z" => "--..",
														" " => " ",
														"1" => ".----",
														"2" => "..---",
														"3" => "...--",
														"4" => "....-",
														"5" => ".....",
														"6" => "-....",
														"7" => "--...",
														"8" => "---..",
														"9" => "----.",
														"0" => "-----"
													}.invert end

  def decodeMorse(morseCode)
		decoded = []
		id = 0
		split_code = morseCode.split(/ /)
		split_code_filtered = filter_code(split_code)
		split_code_filtered.each do |character|
			if character == "" && id != 1
				decoded << " "
				id += 1
			else
				decoded << Code.morse_dict[character]
				id = 0
			end
		end
		decoded.join("").upcase
	end

	def filter_code(split_code)
		split_code.each do |character|
			if character == ""
				split_code.shift
				break
			else
				break
			end
		end
		if split_code[0] == ""
			filter_code(split_code)
		else
			split_code
		end
	end
end
