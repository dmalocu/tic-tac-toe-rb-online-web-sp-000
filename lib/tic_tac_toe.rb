WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end  
  
def input_to_index(user_input)
  user_input = user_input.chomp.to_i - 1 
end
  
def move(board, index, character)
  board[index] = character 
end
  
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil 
    return false 
  else 
    return true 
  end 
end  

def valid_move?(board, index)
  if !(position_taken?(board, index)) && index.between?(0,8)
    return true 
  else 
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end

def turn_count
  
end 

def current_player

end

def won?(board)
  WIN_COMBINATIONS.each do |win_combo| 
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    position_1 = board(win_index_1)
    position_2 = board(win_index_2)
    position_3 = board(win_index_3)
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo 
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    else 
      #do nothing 
    end
  end
end 

def full?
  
end 

def draw?
  
end 

def over?
  
end 

def winner
  
end 