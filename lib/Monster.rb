# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module Napakalaki
  class Monster
    private
    attr_accessor :name,:combarLevel,:price,:bs
    def initialize(nombre,nivel,precio,badstuff)
      @name=nombre
      @combatLevel=nivel
      @price=precio
      @bs=badstuff
    end
    public
    def Monster.newM(nombre,nivel,precio,badstuff)
      @name=nombre
      @combatLevel=nivel
      @price=precio
      @bs=badstuff
    end
    def to_s
      "Name: #{@name} \nCombat Level: #{@combatLevel}  \n BadStuff: #{@bs.to_s()} \n Prize: #{@price.to_s()} \n"
    end
  end
end
