require_relative "./mastermind/version"
require 'pry'

%w(row core_extensions board indicator game).each do |file|
  require_relative "./mastermind/#{file}.rb"
end

module Mastermind
  # Your code goes here...
end
