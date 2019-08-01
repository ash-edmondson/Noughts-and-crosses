# noughts and crosses
def line(a, b, c)
  a != " " and a == b and b == c 
end
# tell user what to do

puts "use E, R, T, D, F, G, C, V and B to play"

# draw game board
# E | R | T 
# -----------
# D | F | D
# ----------
# C | V | B
b ={
  "E" => " ",
  "R" => " ",
  "T" => " ",
  "D" => " ",
  "F" => " ",
  "G" => " ",
  "C" => " ",
  "V" => " ",
  "B" => " ",

}

player = "X"
loop do
  puts  "#{b["E" ]} | #{b["R"]} | #{b["T"]}"
  puts  "-----------"
  puts   "#{b["D"]} | #{b["F"]} | #{b["G"]}"
  puts  "----------"
  puts   "#{b["C"]} | #{b["V" ]} | #{b["B"]}"
  puts ""

  if line(b ["R"], b["F"], b["V"]) or
  line(b ["E"], b["D"], b["C"]) or
  line(b ["T"], b["G"], b["B"]) or
  line(b ["E"], b["R"], b["T"]) or
  line(b ["D"], b["F"], b["G"])   or
  line(b ["C"], b["V"], b["B"]) or
  line(b ["E"], b["F"], b["B"]) or
  line(b ["C"], b["F"], b["T"])
    puts "you win!"
    break
  end


  puts " #{player}'s turn"

  move = gets.strip.upcase


  if b[move] == "X" or b[move] == "O" or b[move] == nil
    
    
    # tell player bad move
    puts "bad move"
    next
  end

  b [move] = player

  

  if player == "X"
    player="O"
  else
    player ="X"
  end
end
# Check if someone has won
    

# there is eight diffrent ways to win


#Switch between players
