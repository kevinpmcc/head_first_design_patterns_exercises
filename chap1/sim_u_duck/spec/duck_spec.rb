require_relative '../lib/duck'

describe Duck do
  it { is_expected.to respond_to :quack }

  it { is_expected.to respond_to :swim }

  it { is_expected.to respond_to :fly }
end

describe MallardDuck do
  describe '#screen_display' do
    it 'returns pretty' do
      mallard_duck = MallardDuck.new

      actual = mallard_duck.screen_display
      expected = 'pretty'

      expect(actual).to eq(expected)
    end
  end

  describe '#fly' do
    it 'returns sorry nope' do
      rubber_duck = RubberDuck.new

      actual = rubber_duck.fly
      expected = 'sorry nope'

      expect(actual).to eq(expected)
    end
  end

  describe '#fly' do
    it 'returns sorry nope' do
      mallard_duck = MallardDuck.new

      actual = mallard_duck.fly
      expected = 'flap flap'

      expect(actual).to eq(expected)
    end
  end
end

describe RedheadDuck do
  describe '#screen_display' do
    it 'returns red' do
      redhead_duck = RedheadDuck.new

      actual = redhead_duck.screen_display
      expected = 'red'

      expect(actual).to eq(expected)
    end
  end

  describe '#fly' do
    it 'returns sorry nope' do
      redhead_duck = RedheadDuck.new

      actual = redhead_duck.fly
      expected = 'flap flap'

      expect(actual).to eq(expected)
    end
  end

  describe '#quack' do
    it 'returns squeak squeak' do
      redhead_duck = RedheadDuck.new
      puts redhead_duck

      actual = redhead_duck.quack
      expected = 'quack quack'

      expect(actual).to eq(expected)
    end
  end
end

describe RubberDuck do
  describe '#screen_display' do
    it 'returns rubbery yellow' do
      rubber_duck = RubberDuck.new

      actual = rubber_duck.screen_display
      expected = 'rubbery yellow'

      expect(actual).to eq(expected)
    end
  end

  describe '#fly' do
    it 'returns sorry nope' do
      rubber_duck = RubberDuck.new

      actual = rubber_duck.fly
      expected = 'sorry nope'

      expect(actual).to eq(expected)
    end
  end

  describe '#quack' do
    it 'returns squeak squeak' do
      rubber_duck = RubberDuck.new

      actual = rubber_duck.quack
      expected = 'squeak squeak'

      expect(actual).to eq(expected)
    end
  end
end

describe DecoyDuck do
  describe '#screen_display' do
    it 'returns wooden' do
      decoy_duck = DecoyDuck.new

      actual = decoy_duck.screen_display
      expected = 'wooden'

      expect(actual).to eq(expected)
    end
  end

  describe '#fly' do
    it 'returns sorry nope' do
      decoy_duck = DecoyDuck.new

      actual = decoy_duck.fly
      expected = 'sorry nope'

      expect(actual).to eq(expected)
    end
    it 'can change return value based on passed behavior' do
      decoy_duck = DecoyDuck.new

      fly_rocket_behavior = FlyBehavior::FlyRocketPowered.new
      decoy_duck.fly_behavior = fly_rocket_behavior

      actual = decoy_duck.fly

      expected = 'whoosh at rocket speed'

      expect(actual).to eq(expected)
    end
  end

  describe '#quack' do
    it 'returns Silence' do
      decoy_duck = DecoyDuck.new

      actual = decoy_duck.quack
      expected = '<< Silence >>'

      expect(actual).to eq(expected)
    end
  end
end

describe TurboDuck do
  describe '#fly' do
    it 'returns whoosh at rocket speed' do
      turbo_duck = TurboDuck.new

      actual = turbo_duck.fly
      expected = 'whoosh at rocket speed'

      expect(actual).to eq(expected)
    end
  end
end
