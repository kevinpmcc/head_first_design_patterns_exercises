
class Duck
  attr_accessor :fly_behavior, :quack_behavior


  def initialize
    @fly_behavior = FlyBehavior::Default.new
    @quack_behavior = QuackBehavior::Default.new
  end

  def quack
    @quack_behavior.quack
  end

  def swim
    'splash splash'
  end

  def fly
    @fly_behavior.fly
  end
end

class MallardDuck < Duck
  def initialize
    @fly_behavior = FlyBehavior::FlyWithWings.new
  end

  def fly
    @fly_behavior.fly
  end

  def screen_display
    'pretty'
  end
end

class RedheadDuck < Duck
  def initialize
    @fly_behavior = FlyBehavior::FlyWithWings.new
    @quack_behavior = QuackBehavior::Default.new
  end

  def fly
    @fly_behavior.fly
  end

  def screen_display
    'red'
  end
end


class RubberDuck < Duck
  def initialize
    @fly_behavior = FlyBehavior::FlyNoWay.new
    @quack_behavior = QuackBehavior::Squeak.new
  end

  def screen_display
    'rubbery yellow'
  end
end


class DecoyDuck < Duck
  def initialize
    @fly_behavior = FlyBehavior::FlyNoWay.new
    @quack_behavior = QuackBehavior::MuteQuack.new
  end

  def screen_display
    'wooden'
  end
end

class TurboDuck < Duck
  def initialize
    @fly_behavior = FlyBehavior::FlyRocketPowered.new
    @quack_behavior = QuackBehavior::MuteQuack.new
  end
end

module FlyBehavior
  class Default
    def fly
    end
  end

  class FlyWithWings
    def fly
      'flap flap'
    end
  end

  class FlyNoWay
    def fly
      'sorry nope'
    end
  end

  class FlyRocketPowered
    def fly
      'whoosh at rocket speed'
    end

    def screen_display
      'shiny go-faster stripes'
    end
  end
end

module QuackBehavior
  class Default
    def quack
      'quack quack'
    end
  end
  class Squeak
    def quack
      'squeak squeak'
    end
  end
  class MuteQuack
    def quack
      '<< Silence >>'
    end
  end
end
