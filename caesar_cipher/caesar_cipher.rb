def caesar_cipher(phrase, key)
    new = []
    (key.to_i > 26) ? (key = key.to_i % 26) : key = key.to_i
    phrase = phrase.split(//)
    phrase.each do |character|
        id = character.ord
        if (id.between?(97,122))
            (id + key) > 122 ? new << (id - (26 - key)).chr : new << (id + key).chr
        elsif (id.between?(65,90))
            (id + key) > 90 ? new << (id - (26 - key)).chr : new << (id + key).chr
        else
            new << character
        end
    end
    new.join('')
end

puts caesar_cipher("hello world", -8)
# user_shift = ''

# while true do
#     puts "Please enter a phrase to encrypt using the Caesar Cipher:      (Type 'quit' to end program)"
#     user_input = gets.chomp
#     user_input.downcase == 'quit' ? break : false
    
#     while true
#         puts "Please enter the number of places you want to shift each letter: "
#         user_shift = gets.strip
#         (user_shift.to_i.to_s == user_shift) ? break : (puts "A number, please...")
#     end

#     caesar_cipher(user_input, user_shift)
#     puts
# end

