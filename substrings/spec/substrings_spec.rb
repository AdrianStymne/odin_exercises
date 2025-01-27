require 'substrings'
describe 'substrings' do
   it 'takes a word and a dictionary, and returns one if there is one' do
      s = Substrings.new
      results = s.same_string('low', ['low','carbon'])
      expect(results).to eq({"low" => 1})
   end
   it 'takes a word and a dictionary, and returns none if there is none' do
      s = Substrings.new
      results = s.same_string('low', ['high','carbon'])
      expect(results).to eq({})
   end
   it 'takes a word and a dictionary, and returns more than one if there is more than one' do
      s = Substrings.new
      results = s.same_string('low', ['low','carbon', 'low', 'low'])
      expect(results).to eq({"low" => 3})
   end
end