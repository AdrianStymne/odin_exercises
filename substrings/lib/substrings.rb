class Substrings
    def substrings(string, dictionary)
        str_array = string.split
        str_array.reduce(Hash.new(0)) do |result, part_of_string |
            result.merge(compare_string_with_dict(part_of_string, dictionary)) { 
                |_key, old_val, new_val| old_val + new_val }
        end

    end
    def compare_string_with_dict(string, dictionary)
        dictionary.reduce(Hash.new(0)) do |count, word|
            if string.downcase.include? word
                count[word] +=1
            
            end
            count 
        end
    end
end