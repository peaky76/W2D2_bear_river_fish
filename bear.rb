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
    
end
