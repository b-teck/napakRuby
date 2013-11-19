# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module Napakalaki
class Prize
  private
    attr_accessor :treasures,:level
  def initialize(tesoros , nivel)
     @treasures=tesoros
     @level=nivel
  end
  def to_s
        "Earned Treasures: #{@treasure} \n Earned Levels: #{@levels}"
    end
end
end
