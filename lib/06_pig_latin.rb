def ay(word)
    # The first letter is a vowel
    if word[0] =~ /[aeiouy]/
        return word + 'ay'
    else
        # The first letter is a consonant
        # Count the number of successive consonants
        i = 0
        while i < word.length-1

            if word[i..(i+1)] == "qu"
                i += 2
            elsif word[i] =~ /[^aeiouy]/
                i += 1
            else
                break
            end
        end
        word[i..-1] + word[0..(i-1)] + 'ay'
    end
end

def translate(sentence)
    words = sentence.split()
    words.map! do |word|
        ay(word)
    end

    return words.join(" ")
end
