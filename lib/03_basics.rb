# Returns the bigger number:
# - 'a is bigger'
# - 'b is bigger'
# - 'c is bigger'
# Error handle:
# - 'nil detected'
def who_is_bigger(a, b, c)
    # is_a? String/Integer/Float
    if !a.is_a?(Integer) || !b.is_a?(Integer) || !c.is_a?(Integer)
        return "nil detected"
    end

    if a > b && a > c
        return "a is bigger"
    end

    if b > a && b > c
        return "b is bigger"
    end

    if c > a && c > b
        return "c is bigger"
    end
end

# Reverse, upcase then removes all L, T and A.
def reverse_upcase_noLTA(string)
    # Upcase
    string.upcase!
    # Reverse
    string.reverse!
    # Remove L, T and A
    string.delete!("LTA")
    # Return the modified string
    return string
end

# Find 42?
# Returns:
# - true if there's a 42 in the array items
# - false otherwise
# https://ruby-doc.org/core-2.7.1/Array.html
def array_42(array)
    # if array.include?(42)
    #     return true
    # else
    #     return false
    # end
    return array.include?(42)
end

# The magic_array function takes an array of number or an array of
# array of number as parameter and return the same array :
# - flattened (i.e. no more arrays in array)
# - sorted
# - with each number multiplicated by 2
# - with each multiple of 3 removed
# - with each number duplicate removed (any number should appear only once)
# - sorted
def magic_array(array)
    # Flatten the array
    array.flatten!
    # Sort the array
    array.sort!
    # Multiply by 2 all elements of the array
    array.map! {|x| x * 2}
    # Remove all multiple of 3
    array.delete_if {|multiple| multiple % 3 == 0}
    # Remove all duplicates
    array.uniq!
    # Return the modified array
    return array
end