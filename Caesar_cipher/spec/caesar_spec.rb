# frozen_string_literal: true

require 'caesar'
describe 'Caesar' do
  it 'shifts a single letter by five steps' do
    c = Caesar.new
    shifted = c.encrypt('a')
    expect(shifted).to eq('f')
  end

  it 'shifts a string of letters by five steps' do
    c = Caesar.new
    shifted = c.encrypt('ab')
    expect(shifted).to eq('fg')
  end

  it 'wraps around z' do
    c = Caesar.new
    shifted = c.encrypt('xz')
    expect(shifted).to eq('ce')
  end

  it 'can take upcase and downcase and return the same' do
    c = Caesar.new
    shifted = c.encrypt('AbC')
    expect(shifted).to eq('FgH')
  end

  it 'shifts letters by any number of steps' do
    c = Caesar.new
    shifted = c.encrypt('AbC', 7)
    expect(shifted).to eq('HiJ')
  end

  it 'maintains special characters' do
    c = Caesar.new
    shifted = c.encrypt('A bC!', 7)
    expect(shifted).to eq('H iJ!')
  end

  it 'returns error for any non-string' do
    c = Caesar.new
    c.encrypt('A bC!', 7)
    expect { c.encrypt(123, 7) }.to raise_error('Not a string!')
  end
end
