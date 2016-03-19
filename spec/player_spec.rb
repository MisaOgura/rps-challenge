require 'player'

describe Player do

  subject(:p1) { described_class.new('Misa') }
  let(:move) { ['ROCK','PAPER','SCISSORS'].sample }

  describe '#initialize' do
    it '0.0. initializes with name' do
      expect(p1.name).to eq('Misa')
    end
  end

  describe '#choose' do
    it '1.0. remembers players move' do
      expect(p1.choose(move)).to eq(move)
    end
  end

  describe '#move' do
    it '2.0. returns chosen move' do
      p1.choose(move)
      expect(p1.move).to eq(move)
    end
  end
end