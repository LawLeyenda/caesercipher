require 'sinatra'

class Caesar
  def caesar_cipher(string, shift)
    ciphered = ""
    string.each_char do |letter|
       letter = letter.ord
       if (65..90) === letter
         letter = 65 + (letter - 65 + shift) % 26

       elsif
         (95...122) === letter
         letter = 97 + (letter - 97 + shift) % 26

       end
       ciphered << letter.chr

    end
    p ciphered;
  end

end

caesar = Caesar.new


puts caesar.caesar_cipher("My name is Sean", +1) == "Nz obnf jt Tfbo"
