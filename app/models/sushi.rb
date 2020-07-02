class Sushi < ApplicationRecord

    def full_name
        "#{color} #{name}".split(" ").map{|word| word.capitalize}.join(" ")
        # combine the strings
        # split them into an array of words
        # use ruby's .capitalize method to capitalize each word
        # rejoin the string
    end

    def self.select_by_color(color)
        where(color: color)
    end

end
