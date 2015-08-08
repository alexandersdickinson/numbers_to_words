require('numbers_to_words')
require('rspec')

describe('Fixnum#numbers_to_words') do
  it('returns words for numbers 0-9') do
    expect(5.numbers_to_words()).to(eq('five'))
  end
end