# Substring Function
def substrings(user_string, dictionary)
    # User string is split into an array and downcased for tallying substrings
    altered_user_string = user_string.downcase.split(" ")
    # Hash is initialized
    new_hash = Hash.new(0)
    # Nested for loops to check each time a dictionary string/substring 
    # Appears in user_string
    dictionary.each do 
        |dictionary_string|
        altered_user_string.each do 
            |user_word|
            if user_word.include?(dictionary_string)
                new_hash[dictionary_string] += 1
            end
        end

    end
    p new_hash
end

dictionary = ["below","down","go","going","horn","how",
    "howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)



