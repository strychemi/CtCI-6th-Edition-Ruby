require "ch01/1.09.rb"

describe "1.9 String Rotation" do

  describe "#is_substring" do

    it "'abc' is a substring of 'abcde'" do
      expect(is_substring?('abcde', 'abc')).to eq true
    end

    it "'abc' is not a substring of 'aaa'" do
      expect(is_substring?('aaa', 'abc')).to eq false
    end

  end

  describe "#string_rotation?" do

    it "'waterbottle' and 'erbottlewat' is a valid rotation" do
      expect(string_rotation?('waterbottle', 'erbottlewat'))
    end

    it "'waterbottle' and 'tawerbottle' is invalid" do
    end
  end
end
