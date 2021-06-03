class Sushi < ApplicationRecord

  def full_name
    "#{self.color} #{self.name}".split(" ").map{|word| word.capitalize}.join(" ")
  end

  def self.select_by_color(color)
    if color
      where("color LIKE ?", "%#{color}%")
    else
      all
    end
  end



end
