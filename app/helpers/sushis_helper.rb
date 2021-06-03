module SushisHelper
  def titleize(sushi)
    "#{sushi.color} #{sushi.name}".split(" ").map{|word| word.capitalize}.join(" ")
  end
end
