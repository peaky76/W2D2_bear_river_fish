class River

    attr_reader :name, :fish_stock

    def initialize(name, fish)
        @name = name
        @fish_stock = fish
    end

    def add_fish(fish)
        @fish_stock << fish
    end

    def remove_fish(fish_name)
        @fish_stock.delete(fish_name)
    end

    def fish_stock_count()
        return fish_stock.count()
    end

end
