require 'pry'

class WordAnalysis
  def initialize(text)
    @text = text.downcase
  end

  attr_reader :text
  #all of these counts could use refactoring to include a method to make them prettier and easier to test

  def token_count(tokens)
    token_count = Hash.new(0)

    tokens.each do |token|
      token_count[token] += 1
    end

    token_count
  end

  def word_count
    #need to modify regex to account for apostrophes
    tokens = (@text.gsub!(/\W+|\d/,' ').split(" "))
    token_count(tokens)
  end

  def letter_count
    tokens = ((@text.gsub!(/\W+|\d|/, ' ')).split(" "))
    token_count(tokens)
  end

  def symbol_count
    tokens = @text.gsub!(/\w|\d|\s/, ' ').split(" ")
    token_count(tokens)
  end

  def top_words(count = 3)
    top_words = (word_count.sort_by {|key, value| value}).reverse
    top_words.slice(0, count)
  end

  def top_letters(count = 3)
    top_letters = (letter_count.sort_by {|key, value| value}).reverse
    top_letters.slice(0, count)
  end
end
