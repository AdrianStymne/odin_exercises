 require 'stock_picker'
describe 'stock_picker' do
   it 'can choose the best sell day given a specific purchase day' do
    s = Stock_picker.new
    prices = [2,5,7,5,10,12,1,18,4,2]
    sell = s.best_sell_day_for_given_day(prices)
    expect(sell).to eq ([16,8])
   end

   
    xit 'takes an array and picks the highest and lowest price' do
       s = Stock_picker.new
       best = s.best_value([17,3,6,9,15,8,6,1,10])
       expect(best).to eq([1,4])
    end
end