require 'pry'
def starts_with_a_vowel?(word)
    vowel =  word.match(/[aeiouAEIOU]/)
    word_array = word.split("")
    return word_array[0].to_s == vowel.to_s
end

def words_starting_with_un_and_ending_with_ing(text)
    check = []
    word_array = text.split(" ")
    word_array.each do |text|
    if text.upcase.start_with?("UN") || text.upcase.end_with?("ING")
        check << text
end
end 
    check 
end

def words_five_letters_long(text)
    check = []
    word_array = text.split(" ")
    word_array.each do |text| 
        if text.size == 5 
            check << text
        end
    end
        check
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    if text[0] == text[0].upcase && text[text.length - 1].match(/[a-zA-Z]/).to_s == ""
        true
    else
        false 
    end
end

def valid_phone_number?(phone)
    phone_number = []
    phone_number << phone.scan(/[0-9]/)
    phone_number.flatten.length == 10
end
