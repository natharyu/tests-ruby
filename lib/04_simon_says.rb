#Echo
def echo(hello)
    # if hello == "hello"
    #     return "hello"
    # else
    #     return "bye"
    # end
    return hello
end

#Shout
def shout(shout)
    return shout.upcase
end

#repeat
def repeat(text, r=2)
    return Array.new(r, text).join(" ")
end

# start_of_word
# Returns the n first letters (default 1)
def start_of_word(text, n=1)
    return text[0, n]
end

# first_word
# Return the first word in the sentence
def first_word(text)
    a = text.split()
    return a.first
    # Regex version: return text[/ /, 1]
end

def titleize(text)
    # Split string to Array of words
    a = text.split()
    # Capitalize each word
    a.map!.with_index do |word, index|
        # Don't capitalize 'little words' except the first word of the sentence
        if index != 0 && ["and", "the"].include?(word)
            word
        else
            word.capitalize
        end
    end
    # return the the string with all words
    return a.join(" ")
end
