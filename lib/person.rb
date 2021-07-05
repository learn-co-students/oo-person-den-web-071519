require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    @@names = []
    def initialize (name, *happiness)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@names << []
    end
    def happiness= (happiness)
        @happiness = happiness
        @happiness = 0 if happiness < 0
        @happiness = 10 if happiness > 10
    end
    def hygiene= (hygiene)
        @hygiene = hygiene
        @hygiene = 0 if hygiene < 0
        @hygiene = 10 if hygiene > 10
    end
    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end
    def get_paid (salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        # binding.pry
        self.hygiene += 4
        self.hygiene = 10 if self.hygiene > 10
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.hygiene = 0 if self.hygiene < 0
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end
    def call_friend (person)
        self.happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation (person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist" 
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        elsif topic == 'programming'

            return "blah blah blah blah blah"
        end
    end

end
