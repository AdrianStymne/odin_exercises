# frozen_string_literal: true

require_relative 'lib/caesar'
require 'rubocop'
c = Caesar.new
puts c.encrypt('yoho ho and a bottle of rum')
