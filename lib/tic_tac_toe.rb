class TicTacToe

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
end

def play
    @board = Array.new(9, " ")
    # Play until someone wins or there is a draw
    turn until over?
    # Congratulate the winner
    won? ? puts("Congratulations #{winner}!") : puts("Cat's Game!")
    # Ask if they'd like to play again
    puts "Would you like to play again? (Y or N)"
    # If yes, then #play again
    gets.strip.downcase == "y" || gets.strip.downcase == "yes" ? play : puts("Goodbye!")
  end