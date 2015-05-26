# Code up your own calculator from the lecture. Make sure you can run it from
# the command line. Save the calculator file in a directory, and initialize
# the directory as a git repository. Make sure this isn't nested in another
# existing git repository. Then, push this git repository to Github.

# calculator.rb

require 'pry'

def is_number?(data_entered)
  true if Float(data_entered) rescue false
end

def calculation
  puts 'Enter first number:'
  num1 = gets.chomp

  until is_number?(num1) == true do
    puts 'Number not recognized, please re-enter:'
    num1 = gets.chomp
  end

  operators = ['+', '-', '*', '/']
  selected_operator = ''

  until operators.include?(selected_operator) == true do
    puts 'Enter operator (+,  -,  *  or /)'
    selected_operator = gets.chomp
  end


  puts 'Enter second number:'
  num2 = gets.chomp

  until is_number?(num2) == true do
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

  #answer = answer.to_i if (answer % 1 == 0)?  # this did not work

  if answer % 1 == 0
    answer = answer.to_i
  end


  puts "Answer is #{answer}"

end

continue = ''

until continue == 'n' do
  calculation
  puts "Do you want to perform another calculation? (y/n)"
  continue = gets.chomp
end