def convert_f(f_degrees)
  (f_degrees.to_i - 32) * (5.0/9.0)
end

puts "Enter a temperature in Fahrenheit:"
f = gets.chomp
celcius = convert_f(f)
puts "That is #{celcius.round(1)} degrees Celcius"
