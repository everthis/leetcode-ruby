# @param {String} s
# @return {Integer}
def calculate(s)
  current_num = 0
  sign = 1
  result = 0
  stack = []
 
  s.each_char do |char|
    if is_digit?(char)
      current_num = (current_num * 10) + char.to_i
    elsif char == "+"
      result += sign * current_num
      sign = 1
      current_num = 0
    elsif char == "-"
      result += sign * current_num
      sign = -1
      current_num = 0
    elsif char == '('
      stack << result
      stack << sign
      sign = 1
      current_num = 0
      result = 0
    elsif char == ')'
      result += sign * current_num
      stack_sign = stack.pop
      stack_result = stack.pop
      result *= stack_sign
      result += stack_result
      current_num = 0
    end
  end
  
  result += sign * current_num
end
  
def is_digit?(char)
  /[0-9]/.match?(char)
end
