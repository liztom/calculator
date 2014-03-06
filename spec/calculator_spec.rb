require('rspec')
require('calculator')

describe('calculator') do
  it('add two numbers together if you type in "What is x plus y"') do
    calculator('What is 2 plus 3').should(eq(5))
  end
  it('subtract two numbers together if you type in "What is x minus y"') do
    calculator('What is 7 minus 2').should(eq(5))
  end
  it('divide numbers together if you type in "What is x divided by y"') do
    calculator('What is 12 divided by 3').should(eq(4))
  end
  it('multiply numbers together if you type in "What is x times y"') do
    calculator('What is 25 times 2').should(eq(50))
  end 
  it('finds 5 to the 2nd power when you ask it') do
    calculator('What is 5 to 2nd power').should(eq(25))
  end 
  it('can do multiple operations in one sentence when asked') do
    calculator('What is 5 plus 5 plus 10').should(eq(20))
  end
  it('can do multiple operations in one sentence when asked') do
    calculator('What is 5 plus 5 to the 2nd power').should(eq(100))
  end
end

describe('multiple_strings') do
  it('can do multiple sentences when asked') do
    multiple_strings('What is 5 plus 5 to the 2nd power? What is 12 plus 1').should(eq([100.0, 13.0]))
  end
end
