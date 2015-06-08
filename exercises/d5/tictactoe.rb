#tictactoe.rb


# turn should be a variable that is kept and changes after a turn is made
# board should be an array of hashes 
# A player makes a move, it updates the board by changing that 
# that specific place into their choice
# There should be checks to see if the player's choice is a square
# that is empty, if it is, then proceed, if not, throw error message.
# A winning board contains 1 of 8 possible combos (all top, all middle,
# (all bottom, all left, all center, all right, or the two diagonals)
# the program should be in a while loop, with a game_over variable being
# set to true once a player has won or once all the spots are full.


# After trying to do this problem without classes for about an hour, 
# i realized that was dumb so i decided to make a board class and really
# look up how to use arrays more efficiently. 

class Board

  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end

  def instructions
    puts "1 | 2 | 3",
         "---------",
         "4 | 5 | 6",
         "---------",
         "7 | 8 | 9"
    print "\n"
  end

  def print_board
    (0..2).each do |row|
      print "       "
      (0..2).each do |col|
        print @board[row][col]
        print " | " unless col == 2
      end
      print "\n"
      print "       ---------\n" unless row == 2
    end
    print "\n"
  end

  def find_winner

    (0..2).each do |i|
      if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
        return @board[i][0] unless @board[i][0] == " "

      elsif @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
        return @board[0][i] unless @board[0][i] == " "
      end
    end

    if ( @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] ) ||
       ( @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] )
      return @board[1][1] unless @board[1][1] == " "
    end

    #  X O X
    #  X O X
    #  O X O

    return "C" unless @board.join.split('').include?(" ")

    # Undecided

    return "U"
  end

  def drop_piece(piece, row, col)
    @board[row][col] = piece if (0..2) === row &&
                                (0..2) === col &&
                                @board[row][col] == " "
  end
end

board = Board.new
active_player = "X"

board.instructions

while board.find_winner == "U"

  puts " #{active_player}'s turn. Choose a box!"
  print 
  move = gets.strip.to_i - 1
  row = move / 3
  col = move % 3


  if board.drop_piece(active_player, row, col)
    if active_player == "X"
      active_player = "O"
    else
      active_player = "X"
    end
  else
    puts "                 Invalid move, please select again\n\n"
  end

  board.print_board
end

winner = board.find_winner

  if winner == "C"
    puts "C A T S   G A M E"
  else
    puts "#{winner}'S   W I N"
  end
puts "\n"
board.print_board
puts "\n"
