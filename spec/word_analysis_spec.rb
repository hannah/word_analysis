require 'rspec'
require_relative '../lib/word_analysis.rb'

describe WordAnalysis do
   let(:text) {"It was the best of times, it was the worst of times,
    it was the age of wisdom,
    it was the age of foolishness,
    it was the epoch of belief,
    it was the epoch of incredulity,
    it was the season of Light,
    it was the season of Darkness,
    it was the spring of hope,
    it was the winter of despair,
    we had everything before us,
    we had nothing before us,
    we were all going direct to Heaven,
    we were all going direct the other way--
    in short, the period was so far like the present period, that some of
    its noisiest authorities insisted on its being received, for good or for
    evil, in the superlative degree of comparison only."
    }

    let(:text_analysis) do
      WordAnalysis.new(text)
    end





  it "counts the number of times each word appears" do
    #expect(text_analysis.word_count).to eq(array of match stuff method)
  end

  it "counts the number of times each letter appears" do
    expect(text_analysis.letter_count).to eq({"i"=>45,"t"=>48,"w"=>21,"a"=>28,"s"=>42,"h"=>28,"e"=>69,"b"=>5,"o"=>44,"f"=>19,"m"=>5,"r"=>27,"g"=>13,"d"=>14,"l"=>12,"n"=>22,"p"=>10,"c"=>7,"u"=>5,"y"=>4,"k"=>2,"v"=>5})
  end

  it "counts the number of times each symbol appears that is not an alphanumeric character" do
  end

  it "displays the three most common words" do
  end

  it "displays the three most common letters" do
  end

  # it "displays the number of words only used once" do
  # end

  # it "displays the number of letters only used once" do
  # end

end
