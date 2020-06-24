class River

    attr_reader :name

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
    
    def select_random_fish()
        return @fish_stock.sample()
    end

    def fish_stock_count()
        return @fish_stock.count()
    end

end
