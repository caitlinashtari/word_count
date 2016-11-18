require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns a fixnum from a user inputted string') do
    expect("cat".word_count("cat")).to(eq(1))
  end

  it('returns a fixnum for each instance of a user inputted word in a user inputted string') do
    expect("my cat likes other cats cats".word_count("cat")).to(eq(3))
  end

  it('returns a fixnum for each instance a user inputted word occurs in a user inputted string including inputted words that are combined with other words') do
    expect("helloworld, helloworld, hello!".word_count("hello")).to(eq(3))
  end

  it('returns a fixnum for each instance of a user inputted word in a user inputted string independent of case of string') do
    expect("I like PIZZA!".word_count("pizza")).to(eq(1))
  end

  it('returns a fixnum for each instance of a user inputted word in a user inputted string independent of case of inputted word') do
    expect("Seriously, I really like pizza".word_count("PIZZA")).to(eq(1))
  end

  it('returns a fixnum for each instance of a user inputted word in a user inputted string indepent of special characters within that string') do
    expect("Did I already say I like piz-za?".word_count("pizza")).to(eq(1))
  end

end
