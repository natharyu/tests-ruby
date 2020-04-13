def add(first, second)
    return first + second
end

def substract(first, second)
    return first - second
end

def sum(elements)
    return elements.sum()
end

def multiply(first, second)
    return first * second
end

def power(first, second)
    return first ** second
end

def factorial(n)
    if n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end
