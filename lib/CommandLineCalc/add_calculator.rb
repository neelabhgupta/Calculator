#Addition operator for calculator
class AddCalculator < Calculator
  def initialize(calculator)
    super(calculator.current_value)
  end

  def operate(*args)
    @current_value = current_value + args[0]
  end
end