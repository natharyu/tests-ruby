# Fahrenheit to Celcius
def ftoc(fahrenheit)
    celcius = (fahrenheit.to_f - 32) * 5/9
    return celcius
end

# Celcius to Fahrenheit
def ctof(celcius)
    fahrenheit = (celcius.to_f*9/5) + 32
    return fahrenheit
end
