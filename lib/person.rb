# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene =8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end


  def happiness=(happiness_level)
      @happiness = happiness_level
      @happiness = 10 if happiness > 10
      @happiness = 0 if happiness <0
  end

  def hygiene=(hygiene_level)
    @hygiene = hygiene_level
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    self.happiness=happiness
    
    @hygiene -= 3
    self.hygiene=hygiene
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    self.happiness=(happiness)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
        @happiness -= 2
        self.happiness=happiness
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        @happiness += 1
        self.happiness=happiness
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end

end