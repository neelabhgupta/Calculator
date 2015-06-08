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
        return @calculator.add(params[1].to_f)
      when 'multiply'
        return @calculator.multiply(params[1].to_f)
      when 'subtract'
        return @calculator.subtract(params[1].to_f)
      when 'divide'
        value = @calculator.divide(params[1].to_f) 
        if value == Float::INFINITY || value.nan?
          return "Division by 0 not allowed"
        else
          return value
        end
      when 'cancel'
        @calculator.clear
      end
    rescue Exception => e  
      return "#{e.class} : #{e.message}"  
    end

  end

end