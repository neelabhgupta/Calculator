require 'spec_helper'

describe MultiplyCalculator do

  context "Multiplications" do
    it "should multiply 5 to current value" do
      calculator = Calculator.new(0)
      calculator = MultiplyCalculator.new(calculator)
      calculator.operate(5) 
      expect(calculator.current_value).to eq(0)
    end
  end
end
