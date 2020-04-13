def time_string(seconds)
    time = Time.at(seconds).utc.strftime "%H:%M:%S"
    return time
end
