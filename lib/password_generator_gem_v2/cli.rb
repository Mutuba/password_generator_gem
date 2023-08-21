# lib/password_generator_gem_v2/cli.rb

require "thor"
require_relative "password_generator"

module PasswordGeneratorGemV2
  class CLI < Thor
    desc "generate", "Generate a password"
    method_option :length, type: :numeric, default: 12, desc: "Password length"
    method_option :no_uppercase, type: :boolean, default: false, desc: "Exclude uppercase letters"
    method_option :no_lowercase, type: :boolean, default: false, desc: "Exclude lowercase letters"
    method_option :no_digits, type: :boolean, default: false, desc: "Exclude digits"
    method_option :no_special, type: :boolean, default: false, desc: "Exclude special characters"
    method_option :include_ambiguous, type: :boolean, default: false, desc: "Include ambiguous characters (l, I, o, O, 0)"
    def generate
      options[:exclude_ambiguous] = !options[:include_ambiguous]
      password = PasswordGenerator.generate(options)

      puts "Generated password: #{password}"
    end
  end
end