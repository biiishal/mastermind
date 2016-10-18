require "mastermind/version"

%w(row core_extensions).each do |file|
  require_relative "./mastermind/#{file}.rb"
end

module Mastermind
  # Your code goes here...
end
