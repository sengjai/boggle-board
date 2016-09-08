class BoggleBoard
  def initialize
      @board = nil
  end

  def shake! 
     all_letters = ('A'..'Z').to_a  
     temp_board = []
     for i in (0..16) #4x4
       temp_board << all_letters.sample #16 random letters
     end

     @board = Array.new(4) {
       temp_board.shift(4).to_s.gsub!(/\W+/,'')
     }
  end
  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  #
  # Override this to print out a sensible board format so
  # you can write code like:
  #
  # board = BoggleBoard.new
  # board.shake!
  # puts board
  def to_s
    if @board == nil
      "----\n----\n----\n----"
    else
      "#{@board[0]}\n#{@board[1]}\n#{@board[2]}\n#{@board[3]}"
    end
  end
end

board = BoggleBoard.new
puts board
board.shake!
puts board
board.shake!
puts board




