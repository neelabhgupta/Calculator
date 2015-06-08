#Job: convert string calculator commands to methods on calculator class

class Parser
  def initialize
    @calculator = Calculator.new(0)
  end

  def parse(input)
    params = input.split(' ')
    begin
      case params[0]
      when 'add'
        return @calculator.add(params[1].to_i)
      when 'multiply'
        return @calculator.multiply(params[1].to_i)
      when 'subtract'
        return @calculator.subtract(params[1].to_i)
      when 'divide'
        return @calculator.divide(params[1].to_i)
      when 'cancel'
        @calculator.clear
      else 
        return "Incorrect syntax"
      end
    rescue Exception => e  
      return e.message  
    end

  end

end