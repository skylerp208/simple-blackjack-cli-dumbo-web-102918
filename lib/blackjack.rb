def welcome
  puts "Welcome to the Blackjack Table"
end

card_total = 0

def deal_card
  rand(1...11)

end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 a = deal_card
 b = deal_card
 sum = a + b
 display_card_total(sum)
 sum
end

def hit?(total)
   prompt_user
   if get_user_input == 'h'
     return deal_card + total
   end
   return total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
