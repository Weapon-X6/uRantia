# 1503 13.05.2022
def reverse!(str)

    left_index = 0
    right_index = str.length - 1

    while left_index < right_index
        # Swap characters
        str[left_index], str[right_index] = \
            str[right_index], str[left_index]

        left_index += 1
        right_index -= 1
    end

end


def run_tests
    desc = "empty string"
    string = ''
    reverse!(string)
    expected = ''
    assert_equal(string, expected, desc)

    desc = 'single character string'
    string = 'A'
    reverse!(string)
    expected = 'A'
    assert_equal(string, expected, desc)

    desc = 'longer string'
    string = 'ABCDE'
    reverse!(string)
    expected = 'EDCBA'
    assert_equal(string, expected, desc)
end

def assert_equal(a, b, desc)
    puts "#{desc} ...#{a == b ? 'PASS' : "Fail: #{a.inspect} != #{b.inspect}"}"    
end

run_tests