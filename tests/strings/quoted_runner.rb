require_relative 'quoted'

placeholder = 5 + 10
sentence = %q{The sum of 5 + 10 is #{5 + 10}}

string = QuotedString.new sentence
puts string
puts

sentence = %Q{The sum of 5 + 10 is #{5 + 10}}
string = QuotedString.new sentence
puts string
puts