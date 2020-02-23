def substrings(string, dictionary)
    string_array = string.split

    results = Hash.new

    dictionary.each do |possible_substring|
        string_array.each do |word|
            if word.downcase.include? possible_substring
                if results[possible_substring].nil?
                    results[possible_substring] = 1
                else
                    results[possible_substring] += 1
                end
            end
        end
    end
    return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below low below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
