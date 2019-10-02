class TicTacToe
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
      [0,1,2], #top  
      [3,4,5], #middle
      [6,7,8], #bottom
      [0,3,6], #left_down
      [1,4,7], #middle_down
      [2,5,8], #right_down
      [0,4,8], #left_diagonal
      [2,4,6] #right_diagonal
    ]
    
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    index = user_input.to_i - 1
  end
  
  def move(index, player_token = "X")
    @board[index] = player_token
  end
  
  def position_taken?(position)
    if ((@board[position] == "X") || (@board[position] == "O"))
      true 
    else 
      false 
    end
  end
  
  def valid_move?(position)
    if ((position_taken?[position]) || (!index.between(0,8))
      false 
    else
      true 
    end
  end
  
end