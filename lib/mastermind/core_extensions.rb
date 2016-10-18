# Extensions for Array class to help in other Classes
class Array

  # Compares an array with itself and returns respective symbols
  def match_with(guesses = [])
    guesses.map.with_index do |guess, index|
      if (self.include?(guess) && (self[index] == guess))
        :exact_match
      elsif self.include?(guess)
        :fuzzy_match
      else
        :no_match
      end
    end
  end

end


