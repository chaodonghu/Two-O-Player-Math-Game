require './player'
require './game'

player_1 = MathGame::Player.new("Player 1")
player_2 = MathGame::Player.new("Player 2")
game = MathGame::Game.new(p1, p2)

# Play the game until player_1 or player_2 points are less than 1
until player_1.points < 1 || player_2.points < 1
  game.turn
end

# Display winner
game.winner
