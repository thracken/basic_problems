require_relative "../enum.rb"

describe Enumerable do
  describe "#my_each" do
    it "returns each item in an array" do
      x = [5,4,3,2,1,0]
      expect(x.my_each {|i| puts i}).to eq([5,4,3,2,1,0])
    end
  end

  describe "#my_map" do
    it "returns a mapped array" do
      expect((1..6).my_map {|i| i*i}).to eq([1,4,9,16,25,36])
    end
  end

  describe "#my_all?" do
    it "returns true if all words are >= 3" do
      y = ["123","cat","dog","bear","aardvark"]
      expect(y.my_all? {|word| word.length >= 3}).to eq(true)
    end
    it "returns true if not given a block" do
      y = ["123","cat","dog","bear","aardvark","to"]
      expect(y.my_all?).to eq(true)
    end
  end

  describe "#my_count" do
    it "returns 5 for an array of 5 items" do
      x = [5,4,3,2,1]
      expect(x.my_count).to eq(5)
    end
    it "returns 0 for an empty array" do
      x = []
      expect(x.my_count).to eq(0)
    end
  end
end
