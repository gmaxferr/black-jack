
require_relative 'hello'

RSpec.describe Hello do
  it "Should return 'Hello Word!'" do
    result = Hello.say_hello
    expect(result).to eq "Hello Word!"
  end
end