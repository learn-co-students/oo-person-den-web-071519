require 'pry'

class Person
    
    def initialize(name, funds=25, happiness=8, hygiene=8)
        @name = name
        @funds = funds
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    def bank_account
        @funds
    end

    def bank_account= funds
        @funds = funds
    end

    def happiness
        @happiness
    end

    def limiter var
        if var > 10
            var = 10
        elsif var < 0
            var = 0
        end
        var
    end
    def happiness= happiness
        @happiness = happiness
        @happiness = limiter @happiness

    end

    def hygiene
        @hygiene
    end

    def hygiene= hygiene
        @hygiene = hygiene
        @hygiene = limiter @hygiene
    end

    def happy?
        if @happiness > 7
            return true
        end
        false
    end

    def clean?
        if @hygiene > 7
            return true
        end
        false
    end

    def get_paid salary
        @funds += salary
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene= @hygiene+4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= @hygiene-3
        self.happiness= @happiness+2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness= friend.happiness+3
        self.happiness= self.happiness+3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation person, topic
        if topic == "politics"
            self.happiness=self.happiness-2
            person.happiness=person.happiness-2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=self.happiness+1
            person.happiness=person.happiness+1
            "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
