require 'pry'

class WordAnalysis
  def initialize(text)
    @text = text
  end

  attr_reader :text
  #all of these counts could use refactoring to include a method to make them prettier and easier to test
  def word_count
    #need to modify regex to account for apostrophes
    text = (@text.gsub!(/\W+|\d/,' ').split(" "))
    word_count = Hash.new(0)
    text.each do |word|
      word = word.downcase
      word_count[word] +=1
    end
    word_count
  end

  def letter_count
    text = ((@text.gsub!(/\W+|\d|/, ' ')).split(" "))
    letter_count = Hash.new(0)
    text.each do |character|
      character = character.downcase
      letter_count[character] +=1
    end
    letter_count
  end

  def symbol_count
    text = @text.gsub!(/\w|\d|\s/, ' ').split(" ")
    symbol_count = Hash.new(0)
    text.each do |symbol|
      symbol_count[symbol] +=1
    end
    symbol_count
  end

  def top_words
    top_words = (word_count.sort_by {|key, value| value}).reverse
    return top_words[0..2]
  end

  def top_letters
    top_letters = (letter_count.sort_by {|key, value| value}).reverse
    return top_letters[0..2]
  end
end
