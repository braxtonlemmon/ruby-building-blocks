def substrings(phrase, dictionary)
    contains = {}
    phrase = phrase.downcase.split(/[\W]/)
    phrase.each do |word|
        dictionary.each do |dict_word|
            if word.include?(dict_word)
                (contains.has_key?(dict_word)) ? (contains[dict_word] += 1) : (contains[dict_word] = 1)
            end
        end
    end
    return contains
end

dictionary = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)