#Job: convert string calculator commands to methods on calculator class
class Parser
  def initialize
    @calculator = Calculator.new(0)
  end

  def parse(input)
    regex_p = /^(add|multiply|subtract|divide) ([0-9.]*)$/
    unless input =~ regex_p || input == 'cancel'
      return "Incorrect Syntax"
    end
    params = input.split(' ')
    begin
      case params[0]
      when 'add'
        @calculator = AddCalculator.new(@calculator)#.operate(params[1].to_f)
        #return @calculator.add(params[1].to_f)
      when 'multiply'
        @calculator = MultiplyCalculator.new(@calculator)#.operate(params[1].to_f)
        #return @calculator.multiply(params[1].to_f)
      when 'subtract'
        @calculator = SubtractCalculator.new(@calculator)#.operate(params[1].to_f)
        #return @calculator.subtract(params[1].to_f)
      when 'divide'
        @calculator = DivideCalculator.new(@calculator)#@calculator.divide(params[1].to_f) 
        # if value == Float::INFINITY || value.nan?
        #   return "Division by 0 not allowed"
        # else
        #   return value
        # end
      when 'cancel'
        @calculator.clear
      end
      return @calculator.operate(params[1].to_f)
    rescue Exception => e  
      return "#{e.class} : #{e.message}"  
    end

  end

end