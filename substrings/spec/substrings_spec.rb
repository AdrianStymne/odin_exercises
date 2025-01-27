require 'substrings'
describe 'substrings' do
   it 'takes a word and a dictionary, and returns one if there is one' do
      s = Substrings.new
      indices = s.which_substrings('low', ['low','carbon'])
      indices.to eq({"low" => 1})
   end
   xit 'takes a word and a dictionary, and returns none if there is none' do
      s = Substrings.new
      indices = s.which_substrings('low', ['low','carbon'])
      indices.to eq(nil)
   end
   xit 'takes a word and a dictionary, and returns more than one if there is more than one' do
      s = Substrings.new
      indices = s.which_substrings('low', ['low','carbon', 'low', 'low'])
      indices.to eq({"low" => 3})
   end
end