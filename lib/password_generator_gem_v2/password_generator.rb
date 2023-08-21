# lib/password_generator_gem_v2/password_generator.rb

require "securerandom"

module PasswordGeneratorGemV2
  class PasswordGenerator
    def self.generate(length: 12, include_uppercase: true, include_lowercase: true, include_digits: true, include_special: true, exclude_ambiguous: true)
      characters = ""
      characters += "ABCDEFGHIJKLMNOPQRSTUVWXYZ" if include_uppercase
      characters += "abcdefghijklmnopqrstuvwxyz" if include_lowercase
      characters += "0123456789" if include_digits
      characters += "!@#$%^&*()-_=+[]{}|;:'\",.<>/?\\`~" if include_special

      characters = characters.delete('lIoO0') if exclude_ambiguous

      password = (0...length).map { characters[SecureRandom.random_number(characters.length)] }.join
    end
  end
end