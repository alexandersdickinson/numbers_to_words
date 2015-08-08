require('numbers_to_words')
require('rspec')

describe('Fixnum#numbers_to_words') do
  it('returns words for numbers 0-9') do
    expect(5.numbers_to_words()).to(eq('five'))
  end
  
  it('returns words for numbers 20-99') do
    expect(24.numbers_to_words()).to(eq('twenty four'))
  end
  
  it('returns words for numbers 10-19') do
    expect(13.numbers_to_words()).to(eq('thirteen'))
  end
  
  it('returns words for numbers 100-999') do
    expect(376.numbers_to_words()).to(eq('three hundred seventy six'))
  end
  
  it('handles thousands') do
    expect(206348.numbers_to_words()).to(eq('two hundred six thousand three hundred forty eight'))
  end
  
  it('handles millions') do
    expect(86357918.numbers_to_words()).to(eq('eighty six million three hundred fifty seven thousand nine hundred eighteen'))
  end
end