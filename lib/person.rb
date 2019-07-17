require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      happiness = 10
    elsif happiness < 0
      happiness = 0
    end
    @happiness = happiness
  end

  def hygiene=(hygiene)
    if hygiene > 10
      hygiene = 10
    elsif hygiene < 0
      hygiene = 0
    end
    @hygiene = hygiene
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene = @hygiene

    @happiness += 2
    self.happiness = @happiness

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_name)
    friend_name.happiness += 3 # this invokes the happiness= method AND increments.
    @happiness += 3

    self.happiness = @happiness

    "Hi #{friend_name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend_name, topic)
    if topic == 'politics'
      friend_name.happiness -= 2
      @happiness -= 2
      self.happiness = @happiness

      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      friend_name.happiness += 1
      @happiness += 1
      self.happiness = @happiness

      "blah blah sun blah rain"
    else topic == 'programming'
      "blah blah blah blah blah"
    end

  end

end
