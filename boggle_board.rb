class BoggleBoard
  def initialize
      @all_letters = ('A'..'Z').to_a 
  end

  def shake!
      
     temp_board = []

     for i in (0..16) #4x4
       temp_board << @all_letters.sample #16 random letters
     end

     board = Array.new(4) {
       temp_board.shift(4)
     }
    return board
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
    "omg what is this? try printing me."
  end
end

board = BoggleBoard.new
p board
p board.shake!




