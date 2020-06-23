class River

    attr_reader :name, :fish_stock

    def initialize(name)
        @name = name
        @fish_stock = []
    end

    def add_fish(shoal_of_fish)
        for fish in shoal_of_fish
            @fish_stock << fish
        end
    end

    def fish_stock_count()
        return fish_stock.count()
    end

end
