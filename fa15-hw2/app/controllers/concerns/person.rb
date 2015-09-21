class Person
    def initialize(name, age)
        @name = name
        @age = age
        if name.length > 4
            @nickname = name[0,4]
        else
            @nickname = name
        end
    end

    def nickname
        return @nickname
    end

    def introduce
        return "This is my friend " + @name+", he/she is "+@age+" years old."
    end
    def birth_year
        return 2015-@age.to_i
    end
end
