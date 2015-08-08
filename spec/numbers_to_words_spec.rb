require('numbers_to_words')
require('rspec')

describe('Fixnum#numbers_to_words') do
  it('returns words for numbers 0-9') do
    expect(5.numbers_to_words()).to(eq('five'))
  end
  
  it('returns words for numbers 10-99') do
    expect(24.numbers_to_words()).to(eq('twenty four'))
  end
end