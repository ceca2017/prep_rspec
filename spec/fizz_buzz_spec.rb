require './lib/fizz_buzz'  # The folder holding the project and set up for RSpec

describe 'fizz_buzz' do    # Define the test examples
  it 'returns 1 if number is 1' do  # String here works as a label for the test results
    expect(fizz_buzz(1)).to eq 1  # The actual test.
  end

  it "returns 'fizz_buzz' if number is divisable by 3 and 5 (i.e. 15)" do
    expect(fizz_buzz(15)).to eq 'fizz_buzz'
    expect(fizz_buzz(30)).to eq 'fizz_buzz'
  end

  it "returns 'fizz' if number is divisable by 3" do
    expect(fizz_buzz(3)).to eq 'fizz'
    expect(fizz_buzz(6)).to eq 'fizz'
  end

  it "returns 'buzz' if the number is divisable by 5" do
    expect(fizz_buzz(5)).to eq 'buzz'
    expect(fizz_buzz(10)).to eq 'buzz'
  end

  it "returns error to call with an integer if the number is not an integer" do
    #expect(fizz_buzz("fdfdsfds")). to eq "Please call with an integer number"
    expect(fizz_buzz(10.5)). to eq "Please call with an integer number"
  end

end
