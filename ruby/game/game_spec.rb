require_relative 'game'

describe Game do
  let(:game) { Game.new("wood") }

  it "returns a boolean wether a letter was found" do
    expect(game.augment_found_array("w")).to eq(true)
      expect(game.found_letters).to eq(["w","_","_","_"])
  end

end