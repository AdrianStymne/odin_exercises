require 'substrings'
describe 'substrings' do
   it 'takes a word and a dictionary, and returns one if there is one' do
      s = Substrings.new
      results = s.substrings('low', ['low','carbon'])
      expect(results).to eq({"low" => 1})
   end
   it 'takes a word and a dictionary, and returns none if there is none' do
      s = Substrings.new
      results = s.substrings('low', ['high','carbon'])
      expect(results).to eq({})
   end
   
   it 'takes a word and a dictionary, and returns one substring if there is one' do
      s = Substrings.new
      results = s.substrings('below', ['low','carbon'])
      expect(results).to eq({"low" => 1})
   end
   it 'takes a word and a dictionary, and returns no substring if there is none' do
      s = Substrings.new
      results = s.substrings('below', ['high','carbon'])
      expect(results).to eq({})
   end
   it 'handles both string and substrings' do
      s = Substrings.new
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      results = s.substrings("below", dictionary)
      expect(results).to eq({ "below" => 1, "low" => 1 })
   end
   it 'handles capitalization' do
      s = Substrings.new
      dictionary = ["below","howdy","it"]
      results = s.substrings("Howdy", dictionary)
      expect(results).to eq({"howdy" => 1})
   end
   it 'handles more than one word' do
      s = Substrings.new
      dictionary = ["below","howdy","it"]
      results = s.substrings("howdy it", dictionary)
      expect(results).to eq({"howdy" => 1, "it" => 1})
   end

   it 'can count the same string for multiple words' do
      s = Substrings.new
      dictionary = ["it","i","sit"]
      results = s.substrings("I sit! it?", dictionary)
      expect(results).to eq({"it" => 2, "i" => 3,"sit" => 1 })
   end
   it 'handles the example' do
      s = Substrings.new
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      results = s.substrings("Howdy partner, sit down! How's it going?", dictionary)
      expect(results).to eq({ "down" => 1, "go" => 1, "going" => 1, 
      "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
   end
end