# To make attacks and store Players
require_relative 'player'

class Game

  def bite(player)
    player.receive_damage
  end

end
