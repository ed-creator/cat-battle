require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

    describe "#bite" do
      it "damages the player" do
        expect(player_2).to receive(:receive_damage)
        # expect is above because it expects something that is inside the method (not the return value)
        game.bite(player_2)
      end
    end
end
