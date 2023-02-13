# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        # self.hygiene = [hygiene + 4, 10].min
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
      
    def work_out
        self.hygiene -= 3
        # self.hygiene = [hygiene - 3, 0].max
        self.happiness += 2
        # self.happiness = [happiness + 2, 10].min
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness += 3
        # self.happiness = [happiness + 3, 10].min
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end   

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"   
        else topic == "other"
            "blah blah blah blah blah"
        end
    end
end
