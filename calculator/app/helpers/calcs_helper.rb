module CalcsHelper
  def initialize

  @first_number = ""
  @second_number = ""
  @operations = ""
end
def get_number

end

  def calculate
    case calc
    when @operations == "+"
      @first_number + @second_number
    when @operations == "-"
      @first_number - @second_number
    when @operations == "*"
      @first_number * @second_number
    when @operations == "/"
      @first_number / @second_number  
    end
  end
end
