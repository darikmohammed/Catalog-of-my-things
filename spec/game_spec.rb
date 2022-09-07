require './lib/game'

describe Game do
  before :each do
    @game = Game.new('05/11/2002', '30/12/2022')
  end

  it 'Should return a new Game object' do
    expect(@game.class).to eql Game
  end

  it 'Should return a date of the last time played' do
    expect(@game.last_played_at = '05/11/2002').to eql '05/11/2002'
  end
  it 'Should not return a date of the last time played' do
    expect(@game.last_played_at = 20).not_to eql '05/11/2002'
  end

  it 'Should check if it is not multiplayer' do
    expect(@game.multiplayer = false).to eql false
  end

  it 'Should check if it is multiplayer' do
    expect(@game.multiplayer = true).to eql true
  end

  it 'Should be moved to achive' do
    @game.move_to_archive
    expect(@game.archived).to eql false
  end

  it 'Should not be moved to achive' do
    @game.move_to_archive
    expect(@game.archived).not_to eql true
  end
end
