require "byebug"

class Calculator
    def sum(a, b)
        a + b 
    end

    def resta(a, b)
        a - b
    end
end

calc =  Calculator.new

test_sum = {
    [1,2] => 3,
    [5,6] => 11,
    [100,1] => 101
}

test_sum.each do |input, expect_result|    
    if !(calc.sum(input[0], input[1]) == expect_result)
        raise "Test failed for input #{input}. Expected result #{expect_result}"
    end
end