require 'game'

describe 'Game' do

  it 'user wins the game' do
    game = Game.new('слово')

    expect(game.status).to eq :in_progress

    game.next_step 'с'
    game.next_step 'о'
    game.next_step 'в'
    game.next_step 'л'

    expect(game.errors).to eq 0
    expect(game.status).to eq :won
  end

  it 'user loses the game' do
    game = Game.new('астма')

    game.next_step 'г'
    game.next_step 'р'
    game.next_step 'п'
    game.next_step 'у'
    game.next_step 'т'
    game.next_step 'о'
    game.next_step 'х'
    game.next_step 'н'

    expect(game.errors).to eq 7
    expect(game.status).to eq :lost
  end
end