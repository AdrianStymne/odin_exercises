require 'bouncer'

describe 'Bouncer' do
    it 'rejects xx from the club' do
        b = Bouncer.new
        bounced = b.bounce('xx')
        expect(bounced).to be_truthy
    end
end




#describe 'Caesar_cipher'  do
#    it 'shifts letters according to the factor' do
#      expected_output = ["fg"] 
#     expect(Caesar_cipher("ab",5)).to eq(expected_output)
#    end
#end


# "#string", "#shift_factor"

#context "with a string" do