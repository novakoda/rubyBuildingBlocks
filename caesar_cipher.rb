def caesar_cipher (message, shift)
    ascii = message.chars.map { |c| c.ord }
    shifted = ascii.map { |c| char_scan(c, shift) }
    shifted.map { |c| c.chr }.join
end

def char_scan (old_char, shift)
    
    new_char = old_char

    if old_char.between?(65,90) 
        new_char = old_char + shift
        if new_char > 90
            new_char = new_char - 26
        end
    end

    if old_char.between?(97,122)
        new_char = old_char + shift
        if new_char > 122
            new_char = new_char - 26
        end
    end

    return new_char
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("Ayee I got it to work fam!! JR N0v@ i5 h3r3 & it'$ l1t!?!", 1)