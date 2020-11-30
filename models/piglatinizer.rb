class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        word = text.split(' ')
        #need to iterate over the words and apply the translate
        #word. but want to return the same array so use map
        #after making changes want to join them together
        word.map do |wrd| 
            translate_word(wrd)
        end.join(' ')
    end

    def translate_word(word)
          #want to first check if it starts with vowel and -way
          #so want an if/else statement to check
        vowels = ["a", "i", "e", "o", "u", "A", "I", "E","O", "U"]
        if vowels.include?(word[0])
            word<<"way"
        else
          vowels_index = word.index(/[aAeEiIoOuU]/)  #creates the stopping point for rotate function
          word.split.map{ |wrd| wrd.chars.rotate(vowels_index).join << "ay"}
        end
    end
end