require 'spec_helper'

describe DivideCalculator do

  context "Divisons" do
    it "should divide 5 to current value" do
      calculator = Calculator.new(0)
      calculator = DivideCalculator.new(calculator)
      calculator.operate(5) 
      expect(calculator.current_value).to eq(0)
    end
  end
end
