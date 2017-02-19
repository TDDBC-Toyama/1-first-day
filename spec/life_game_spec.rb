require_relative '../life_game'

describe LifeGame do
  describe '#init' do
    it do
      expect(LifeGame.new.init).to eq(
        [
          ['□', '□', '□', '□', '□'],
          ['□', '□', '□', '□', '□'],
          ['□', '□', '□', '□', '□'],
          ['□', '□', '□', '□', '□'],
          ['□', '□', '□', '□', '□']
        ]
      )
    end
  end

  describe '#next_generation' do
    it do
      expect(
        LifeGame.new.next_generation(
          [
            ['□', '□', '□', '□', '□'],
            ['□', '□', '□', '□', '□'],
            ['□', '■', '■', '■', '□'],
            ['□', '□', '□', '□', '□'],
            ['□', '□', '□', '□', '□']
          ]
        )
      ).to eq(
        [
          ['□', '□', '□', '□', '□'],
          ['□', '□', '■', '□', '□'],
          ['□', '□', '■', '□', '□'],
          ['□', '□', '■', '□', '□'],
          ['□', '□', '□', '□', '□']
        ]
      )
    end
    it do
      expect(
        LifeGame.new.next_generation(
          [
            ['□', '□', '□', '□', '□'],
            ['□', '□', '■', '□', '□'],
            ['□', '□', '■', '□', '□'],
            ['□', '□', '■', '□', '□'],
            ['□', '□', '□', '□', '□']
          ]
        )
      ).to eq(
        [
          ['□', '□', '□', '□', '□'],
          ['□', '□', '□', '□', '□'],
          ['□', '■', '■', '■', '□'],
          ['□', '□', '□', '□', '□'],
          ['□', '□', '□', '□', '□']
        ]
      )
    end
  end

  describe '#around_alive_count' do
    let(:life_game) { LifeGame.new }

    it do
      board = [
        ['□', '□', '□'],
        ['□', '□', '□'],
        ['□', '□', '□']
      ]
      expect(life_game.around_alive_count(board, 1, 1)).to eq 0
    end
  end
end
