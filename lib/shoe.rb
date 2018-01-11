require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

@@all_brands = []
BRANDS = []


  def initialize(brand="")
    @brand = brand
    @@all_brands << brand
    @@all_brands.each do |brand|
      unless BRANDS.include?(brand)
        BRANDS << brand
      end
    end
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
