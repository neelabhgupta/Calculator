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
      expect(parser.parse("divide 0")).to eq("Division by 0 not allowed")
    end

    it "should show message when incorrect syntax" do
      parser = Parser.new()
      expect(parser.parse("/ 0")).to eq("Incorrect Syntax")
    end

    it "should show message when incorrect syntax" do
      parser = Parser.new()
      expect(parser.parse("divide p")).to eq("Incorrect Syntax")
    end

    it "should add 5.4" do
      parser = Parser.new()
      expect(parser.parse("add 5.4")).to eq(5.4)
    end

  end
  
 end 