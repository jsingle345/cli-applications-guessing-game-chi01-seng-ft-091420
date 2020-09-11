# Code your solution here!

def run_guessing_game 
  prompt_us
  rand(6) + 1
  input = get_user_input
end



def prompt_user
  puts "Guess number between 1 and 6"
end

def get_user_input
  gets.chomp
end

require_relative 'spec_helper'

describe "Guessing CLI" do

  context 'user inputs' do
    it "responds to 'exit'" do
      expect(self).to receive(:gets).and_return('exit')
      expect { run_guessing_game }.to output(/Goodbye!/).to_stdout
    end

    it "responds to an incorrect guess" do
      allow(self).to receive(:rand).and_return(5)

      expect(self).to receive(:gets).and_return("2")

      expect { run_guessing_game }.to output(/Sorry! The computer guessed 6./).to_stdout
    end

    it "responds to a correct guess" do
      allow(self).to receive(:rand).and_return(1)

      expect(self).to receive(:gets).and_return("2")

      expect { run_guessing_game }.to output(/You guessed the correct number!/).to_stdout
    end
  end


end
