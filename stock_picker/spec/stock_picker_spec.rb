 require 'stock_picker'
describe 'stock_picker' do
   it 'shifts a single letter by five steps' do
       s = Stock_picker.new
       shifted = s.encrypt('a')
       expect(shifted).to eq('f')
    end
end