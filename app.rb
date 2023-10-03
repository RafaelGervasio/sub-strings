$substrings_list = []

def substrings (word, dictionary)
    $size = word.length
    hash = {}


    #Find all substrings
    #Check in dict
    #If matches, append to hash
    #Return hash

    find_subs(word)

    $substrings_list.each do |sub_string|
        dictionary.each do |dict_word|
            if sub_string == dict_word
                if hash[sub_string] != nil
                    hash[sub_string] += 1
                else
                    hash[sub_string] = 1
                end
            end
        end
    end

    p hash
end

def find_subs (word, index=0, target=0)

    if word == ''
        return
    end
    
    while target < word.length
        $substrings_list.push(word[index..target]) 
        target+=1
    end

    if index<=$size
        word = word[1..-1]
        find_subs(word, index=0, target=0)
    else
        return
    end
end


list = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings('below', list)