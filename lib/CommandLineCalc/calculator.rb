# job: Mathematical operations on a stored value
class Calculator
  attr_reader :current_value
  def initialize(start_value)
    @current_value = start_value    
  end

  def add(value)
    @current_value = value + @current_value
  end  

  def multiply(value)
    @current_value = value * @current_value
  end 

  def subtract(value)
    @current_value = @current_value - value
  end 

  def divide(value)
    @current_value = @current_value / value
  end

  def clear
    @current_value = 0
  end

  private 

  def numeric?
    Float(self) != nil rescue false
  end
end
