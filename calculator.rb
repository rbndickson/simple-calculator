# Code up your own calculator from the lecture. Make sure you can run it from
# the command line. Save the calculator file in a directory, and initialize
# the directory as a git repository. Make sure this isn't nested in another
# existing git repository. Then, push this git repository to Github.

# calculator.rb


def is_number?(data_entered)
  true if Float(data_entered) rescue false
end

def calculation
  puts 'Enter first number:'
  num1 = gets.chomp

  until is_number?(num1)
    puts 'Number not recognized, please re-enter:'
    num1 = gets.chomp
  end

  operators = ['+', '-', '*', '/']
  selected_operator = ''

  until operators.include?(selected_operator)
    puts 'Enter operator (+,  -,  *  or /)'
    selected_operator = gets.chomp
  end

  puts 'Enter second number:'
  num2 = gets.chomp

  until is_number?(num2)
    puts 'Number not recognized, please re-enter:'
    num2 = gets.chomp
  end


  if selected_operator == '+'
    answer = num1.to_f + num2.to_f
  elsif selected_operator == '-'
    answer = num1.to_f - num2.to_f
  elsif selected_operator == '*'
    answer = num1.to_f * num2.to_f
  elsif selected_operator == '/'
    answer = num1.to_f / num2.to_f
  end

  if answer % 1 == 0
    answer = answer.to_i
  end

  puts "Answer is #{answer}"

end

continue = 'y'

until continue != 'y' do
  calculation
  puts "Do you want to perform another calculation?"
  puts "Enter y to continue or anything else to exit"
  continue = gets.chomp
end
