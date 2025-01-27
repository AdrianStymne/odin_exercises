# frozen_string_literal: true

class Caesar
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.chars
  ALPHABET_LENGTH = ALPHABET.length
  def encrypt(unencrypted_string, shift = 5)
    raise StandardError, 'Not a string!' unless unencrypted_string.is_a?(String)

    unencrypted_string.chars.reduce('') do |encrypted_string, char|
      if char.match?(/[A-Za-z]/)
        encrypted_string + shift_letter(char, shift)
      else
        encrypted_string + char
      end
    end
  end

  def shift_letter(char, shift)
    char_was_upcase = ('A'..'Z').include? char
    char_index = ALPHABET.find_index(char.downcase)
    shifted_index = (char_index + shift) % ALPHABET_LENGTH
    if char_was_upcase
      ALPHABET[shifted_index].upcase
    else
      ALPHABET[shifted_index]
    end
  end
end
