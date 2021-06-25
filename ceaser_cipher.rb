def ceaser_cipher(string, shift = "5")
    split_string = string.split(//)
    split_string.map! do |letter|
        if letter =~ /[[:punct:]]/ || letter == " "
            letter
        else
            num = letter.ord
            num += shift
            if num >= 91 && num <= 95
                num -= 26
            end
            if num > 122 
                num -= 26
            end
            num.chr
        end
    end
        split_string.join
    
end


p ceaser_cipher("What a wonderful string!", 2)
