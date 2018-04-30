class Caesar_cipher

	def self.encrypt(string, shift_factor)

		string = string.strip
		shift_factor = shift_factor % 26
		encrypted_string = ""

		string.split("").each do |c|
			if (c =~/\d/) 
				encrypted_string << (c.to_i + shift_factor) % 10
			elsif (c =~ /\w/)
				is_capital = (65..90).include?(c.ord)
				new_c = c.ord + shift_factor
				if (is_capital && new_c > 90)
					new_c -= 26
				end
				if (!is_capital && new_c > 122)
					new_c -= 26
				end
				encrypted_string << new_c.chr
			else 
				encrypted_string << c
			end
		end
		return encrypted_string
	end
end

#puts Caesar_cipher.encrypt("xyz", 2)