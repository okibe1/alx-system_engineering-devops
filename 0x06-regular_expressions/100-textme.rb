#!/usr/bin/env ruby
# Open the log file
File.open('log.txt', 'r') do |file|

  # Loop over each line
  file.each_line do |line|

    # Use a regular expression to extract the sender, receiver, and flags
    match = line.match(/\[from:(.*?)\].*\[to:(.*?)\].*\[flags:(.*?)\]/)

    # If there was a match, print the results
    if match
      sender = match[1]
      receiver = match[2]
      flags = match[3]
      puts "#{sender},#{receiver},#{flags}"
    end
  end
end

