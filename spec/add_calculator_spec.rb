require 'spec_helper'

describe AddCalculator do

  context "Additons" do
    it "should add 5 to current value" do
      calculator = Calculator.new(0)
      calculator = AddCalculator.new(calculator)
      calculator.operate(5) 
      expect(calculator.current_value).to eq(5)
    end
  end
end
