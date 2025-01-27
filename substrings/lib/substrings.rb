class Substrings
    def same_string(string, dictionary)
        dictionary.reduce(Hash.new(0)) do |count, word|
            if word == string 
                count[word] +=1
            end
        count
        end

    end
end