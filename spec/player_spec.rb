

describe Player do
 subject(:player1) { described_class.new("Connie") }
 subject(:player2) {described_class.new("Ed")}

 describe "#name" do
   it "returns name" do
     expect(player1.name).to eq "Connie"
   end
 end

 describe "#hp" do
   it "hp is set to 100 at the start of the game" do
     expect(player1.hp).to eq 100
      end
   end

  describe "#receive_damage" do
    it "reduces hp for the given player" do
      expect{(player1.receive_damage)}.to change {player1.hp}.by -10
      end
    end
end
