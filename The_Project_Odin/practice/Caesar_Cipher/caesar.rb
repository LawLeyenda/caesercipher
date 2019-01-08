require 'sinatra'

  require 'sinatra/reloader'



get '/' do
  @shift = params['shift']
  @string = caesar_cipher(params['string'], @shift.to_i)
  erb :index, :locals => {:string => @string, :shift => @shift }
end

  def caesar_cipher(string, shift)
    ciphered = ""
    string.to_a.each do |letter|
       letter = letter.ord
       if (65..90) === letter
         letter = 65 + (letter - 65 + shift) % 26

       elsif
         (95...122) === letter
         letter = 97 + (letter - 97 + shift) % 26

       end
       ciphered << letter.chr

    end
    return ciphered;
  end







