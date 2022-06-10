

# caesar cipher function
def caesar_cipher(user_input, key)
    split = user_input.split("")
    new_array = split.map do |element|
        # checks if element is a space
        if element == " " then
            " "
        #check for lowercase character
        elsif element.ord.between?(97, 122) && (element.ord + key > 122) then
            (element.ord + key -26).chr
        elsif element.ord.between?(97,122) then
            (element.ord + key).chr

        # check for uppercase character
        elsif element.ord.between?(65, 90) && (element.ord + key > 90) then
            (element.ord + key -26).chr
        elsif element.ord.between?(65,90) then
            (element.ord + key).chr
        else
            # returns element to map method
            element
        end
    end
     
    # joins newarray to form caesar string
    puts new_array.join
end

puts "Please enter a string to be ciphered: "
user_input = gets.chomp
puts "Enter key: "
cipher_key = gets.chomp
caesar_cipher(user_input, cipher_key)