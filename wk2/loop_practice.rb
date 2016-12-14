def compare(number, guess)
  if number == guess
    puts "You guessed it!"
    return true
  elsif guess > number
    puts "Guess lower"
    return false
  else
    puts "Guess higher"
    return false
  end
end

def play
  number = rand(1..100)
  puts "Guess a number between 1 and 100"
  win = false
  i = 0
  while i < 5
    i += 1
    guess = gets.chomp.to_i
    if compare(number, guess)
      win = true
      break;
    else
      puts "You have #{5-i} guesses left"
    end
  end
  play unless win
end

play
