require_relative '../encrypt'

# RSPEC - 3 keywords
# 1. describe -> specify which method we're testing
# 2. it -> describing the test in English
# 3. expect -> call the method and compare the result

describe '#encrypt' do
  it 'should return a string' do
    expect(encrypt('')).to be_a(String)
  end

  it 'should return an empty string when given one' do
    expect(encrypt('')).to eq('')
  end

  it 'should give us the letter B when given E' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return an encrypted sentence when give a full sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
    # expect(encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
  end

  it 'should return an encrypted sentence when given punctuation' do
    example = "THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG."
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD."
    expect(encrypt(example)).to eq(expected)
    # expect(encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
  end
end
