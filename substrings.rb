dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(text, dictionary)
    result = Hash.new(0)

    dictionary.each do |word|
    matches = text.downcase.scan(word).length
    result[word] = text.downcase.scan(word).length unless matches == 0
    end
    p result
end

substring("Howdy partner, sit down! How's it going?", dictionary)
