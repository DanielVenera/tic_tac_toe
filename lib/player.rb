class Player
    attr_accessor :name, :array

    def initialize(name)
        @name = name
        @array = [] #THIS IS HERE WHERE WE PUT THE FIELDS ALREADY CROSSED BY A PLAYER
    end

    #FOR EXAMPLE, IF HE ALREADY HAVE "a1", "a2" and "a3" IN HIS ARRAY (LOOK AT LINE 56 IN APP.RB) HE WINS
    def winner?
        (self.array & ["a1","a2","a3"]).length == 3 || (self.array & ["b1","b2","b3"]).length == 3 || (self.array & ["c1","c2","c3"]).length == 3  || (self.array & ["a1","b1","c1"]).length == 3  || (self.array & ["a2","b2","c2"]).length == 3  || (self.array & ["a3","b3","c3"]).length == 3  || (self.array & ["a1","b2","c3"]).length == 3  || (self.array & ["c1","b2","a3"]).length == 3
    end
end