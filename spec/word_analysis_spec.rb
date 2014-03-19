require 'rspec'
require_relative '../lib/word_analysis.rb'

describe WordAnalysis do
  describe "#word_count" do
    it "counts the number of times each word appears" do
      text = "one two two three three three"
      analysis = WordAnalysis.new(text)
      expected_output = { 'one' => 1, 'two' => 2, 'three' => 3 }

      expect(analysis.word_count).to eq expected_output
    end
  end

  describe "#letter_count" do
    it "counts the number of times each letter appears" do
      analysis = WordAnalysis.new('abbcccdddd')
      expected_output = { 'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4 }

      expect(analysis.letter_count).to eq expected_output
    end
  end

  describe "#symbol_count" do
    it "counts the number of times each symbol appears that is not an alphanumeric character" do
      analysis = WordAnalysis.new('#a, b, c. d; e!')
      expected_output = { '#' => 1, ',' => 2, '.' => 1, ';' => 1, '!' => 1 }

      expect(analysis.symbol_count).to eq expected_output
    end
  end

  describe "#top_words" do
    it "displays the three most common words" do
      analysis = WordAnalysis.new('one two two three three three four four four four')
      expected_output = [['four', 4], ['three', 3], ['two', 2]]

      expect(analysis.top_words).to eq expected_output
    end
  end

  describe "#top_words" do
    it "displays the three most common letters" do
      analysis = WordAnalysis.new('abbcccddddeeeee')
      expected_output = [['e', 5], ['d', 4], ['c', 3]]

      expect(analysis.top_letters).to eq expected_output
    end
  end
end
