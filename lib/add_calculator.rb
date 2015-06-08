#Addition operator for calculator
class AddCalculator < Calculator
  def initialize(calculator)
    super(calculator.current_value)
  end

  def operate(operand)
    @current_value = current_value + operand
  end
end