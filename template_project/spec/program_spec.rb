require 'caesar'
describe 'Caesar' do
   it 'shifts a single letter by five steps' do
       c = Caesar.new
       shifted = c.encrypt('a')
       expect(shifted).to eq('f')
   end
end