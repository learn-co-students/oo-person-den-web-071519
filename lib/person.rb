class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num.clamp(0,10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0,10)
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

    def get_paid(sal)
        @bank_account += sal
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = (@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (@happiness + 2)
        self.hygiene = (@hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (@happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics" then
            self.happiness = (@happiness - 2) #this should be a helper method
            friend.happiness = (friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == ("weather") then
            self.happiness = (@happiness + 1)
            friend.happiness = (friend.happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
