class BoardCase
    attr_accessor :place, :view

    def initialize(place, view="[ ]") #EACH BOARD CASE IS FIRST AN EMPTY FIELD
        @place = place
        @view = view
    end

    def show_case_crossed
        @view = "[x]"
        return @view
    end

    def show_case_rounded
        @view = "[o]"
        return @view
    end
end