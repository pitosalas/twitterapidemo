require 'pry-byebug'
require 'rspec'
require_relative '../twitter_whacker'

describe "it initializes" do
  before (:each) do
    @tw = TwitterWhacker.new
  end

  it "initializes" do
    @tw.score.should == nil
  end

  it "can find tweets about roling stones" do
    @tw.set_words("rolling", "stones")
    @tw.score.should_not == nil
  end

end
