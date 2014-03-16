require 'pry'

class WordAnalysis
  def initialize(text)
    @text = text
  end

  attr_reader :text

  def word_count
    #need to modify regex to account for apostrophes
    text = (@text.gsub!(/\W+|\d/,' ').split(" "))
    word_count = Hash.new(0)
    text.each do |word|
      word = word.downcase
      word_count[word] +=1
    end
    word_count
    #2. create a hash mapping each word to the count of how many times it appears
    #   hash should be initialized at 0
    #3. iterate over text to map each word to the count
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
end
