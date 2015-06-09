require 'spec_helper'

describe ClearCalculator do

  context "Clear" do
    it "should return 0 if cleared" do
      calculator = Calculator.new(0)
      calculator = AddCalculator.new(calculator)
      calculator.operate(5)
      calculator = ClearCalculator.new(calculator)
      calculator.operate
      expect(calculator.current_value).to eq(0)
    end
  end
end