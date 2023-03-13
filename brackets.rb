OPEN_BRACKETS    = ['(', '[', '{']
DEFAULT_BRACKETS = ['()', '[]', '{}']

def collect_data
    print 'Enter your bracket sequence: '					#( (  [ ] ) )
    gets.chomp
end

def brackets_match?(left_bracket, right_bracket)
    DEFAULT_BRACKETS.include?("#{left_bracket}#{right_bracket}")
end

def validate_bracket_sequence(bracket_sequence)
    bracket_stack    = []
    bracket_sequence = bracket_sequence.split('')

    bracket_sequence.each do |bracket|
        if OPEN_BRACKETS.include?(bracket)
            bracket_stack << bracket
        else
            if brackets_match?(bracket_stack.last, bracket)
                bracket_stack.pop
            else
                return false
            end
        end
    end

    return true
end

puts validate_bracket_sequence(collect_data)

