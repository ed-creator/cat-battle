

describe Player do
 subject(:player) { described_class.new("Connie") }

 describe "#name" do
   it "returns name" do
     expect(player.name).to eq "Connie"
   end
 end

 describe "#hp" do
   it "hp is set to 100 at the start of the game" do
     expect(player.hp).to eq 100
      end
   end
end
