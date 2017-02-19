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
  end
end
