#Clearing current value of calculator
class ClearCalculator < Calculator
  def initialize(calculator)
    super(calculator.current_value)
  end

  def operate
    @current_value = 0
  end
end