# frozen_string_literal: true

require_relative "password_generator_gem_v2/version"
require_relative "password_generator_gem_v2/password_generator"
require_relative "password_generator_gem_v2/cli"

module PasswordGeneratorGemV2
  class Error < StandardError; end
end
