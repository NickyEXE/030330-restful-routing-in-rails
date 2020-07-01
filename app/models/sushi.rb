class Sushi < ApplicationRecord

    def full_name
        "#{color} #{name}".split(" ").map{|word| word.capitalize}.join(" ")
    end

    def self.find_by_color(color)
        Sushi.where(color: color)
    end
end
