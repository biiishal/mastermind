require "./mastermind/version"

%w().each do |file|
  require_relative "./tic_tac_toe/#{file}.rb"
end

module Mastermind
  # Your code goes here...
end
