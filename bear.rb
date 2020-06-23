 class Bear

    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach_contents = []
    end

    def fish_in_stomach_count()
        return @stomach_contents.count()
    end

    def take_fish(river)
        # Bear takes random fish from stock in river
        caught_fish = river.fish_stock.sample()
        # River loses fish
        river.remove_fish(caught_fish)
        # Bear add fish to stomach contents!
        @stomach_contents << caught_fish 
    end

    def roar()
        return "GRRRRRRRR!"
    end
    
end
