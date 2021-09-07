require "tomosprotheroe_palindrome/version"

module TomosprotheroePalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include TomosprotheroePalindrome
end

class Integer 
  include TomosprotheroePalindrome
end