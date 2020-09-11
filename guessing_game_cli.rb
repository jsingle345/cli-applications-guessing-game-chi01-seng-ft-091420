# Code your solution here!

def run_guessing_game 
  prompt_user
  
  input = get_user_input
  if input === random 
    puts "You guessed the correct number!"
  elsif input === exit 
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{random}."
  end
  return
end

def random
  rand(6) + 1
end

def prompt_user
  puts "Guess number between 1 and 6"
end

def get_user_input
  gets.chomp
end

