require 'spec_helper'

describe Calculator do

  context "Operations" do
    it "should add 5 to current value" do
      calculator = Calculator.new(0)
      calculator.add(5) 
      expect(calculator.current_value).to eq(5)
    end

    it "should mutliply 5 to current value" do
      calculator = Calculator.new(5)
      calculator.multiply(5) 
      expect(calculator.current_value).to eq(25)
    end

    it "should divide 5 to current value" do
      calculator = Calculator.new(5)
      calculator.divide(5) 
      expect(calculator.current_value).to eq(1)
    end

    it "should subtract 5 to current value" do
      calculator = Calculator.new(5)
      calculator.subtract(5) 
      expect(calculator.current_value).to eq(0)
    end

    it "should clear current value to 0" do
      calculator = Calculator.new(5)
      calculator.clear 
      expect(calculator.current_value).to eq(0)
    end

  end
  
 end 