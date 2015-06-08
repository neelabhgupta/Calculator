require 'spec_helper'

describe Parser do

  context "Parsing Arithmetic operations" do
    it "should add 5" do
      parser = Parser.new()
      expect(parser.parse("add 5")).to eq(5)
    end

    it "should mutliply 5" do
      parser = Parser.new()
      expect(parser.parse("multiply 5")).to eq(0)
    end

    it "should divide 5" do
      parser = Parser.new()
      expect(parser.parse("divide 5")).to eq(0)
    end

    it "should subtract 5" do
      parser = Parser.new()
      expect(parser.parse("subtract 5")).to eq(-5)
    end

    it "should clear current value to 0 on cancel" do
      parser = Parser.new()
      expect(parser.parse("cancel")).to eq(0)
    end

    it "should show error when divided by 0" do
      parser = Parser.new()
      expect(parser.parse("divide 0")).to eq("divided by 0")
    end

  end
  
 end 