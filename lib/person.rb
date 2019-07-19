class Person 
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene


    def initialize(name, happiness=8, hygiene=8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0,10)
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        p "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            p "blah blah sun blah rain"
        else 
            p "blah blah blah blah blah"
        end
    end

end