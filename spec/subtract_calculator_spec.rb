require 'spec_helper'

describe SubtractCalculator do

  context "Subtractions" do
    it "should subtract 5 to current value" do
      calculator = Calculator.new(0)
      calculator = SubtractCalculator.new(calculator)
      calculator.operate(5) 
      expect(calculator.current_value).to eq(-5)
    end
  end
end
