# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class BadStuff
  private
  def initialize(aText,somelevels=0, someVisibleTreasures=0,someHiddenTreasures=0,someSpecificVisibleTreasures=Array.new,someSpecificHiddenTreasures=Array.new,death=false)
    @text=aText
    @levels=somelevels
    @nVisibleTreasures=someVisibleTreasures
    @nHiddenTreasures=someHiddenTreasures
    @specificHiddenTreasures=someSpecificHiddenTreasures
    @specificVisibleTreasures=someSpecificVisibleTreasures
    @death=death
  end
  public
  def text
      @text
  end
  
  def levels 
    @levels
  end
  
  def getnVisible
    @nVisible
  end
  
  def nHidden
      @nHidden
  end
  
  def sHidden 
    @sHidden
  end
  
  def sVisible
    @sVisible
  end
  
  def death
      @death
  end
  def BadStuff.newDeath (aText)
    BadStuff.new(aText,0,0,0,Array.new,Array.new,true)
  end
  def BadStuff.newLevelNumersOfTreasures(aText,someLevels,someVisibleTreasures,someHiddenTreasures)
    BadStuff.new(aText,someLevels,someVisibleTreasures,someHiddenTreasures,Array.new,Array.new,false)
  end
  def BadStuff.newLevelSpecificTreasures(aText,someLevels,someSpecificVisibleTreasures,someSpecificHiddenTreasures)
    BadStuff.new(aText,someLevels,0,0,someSpecificVisibleTreasures,someSpecificHiddenTreasures)
  end
  def to_s
    "BadStuf: #{@text} \n Levels: #{@levels}  \n Visible Treasures: #{@nVisibleTreasures} \n Hidden Treasures: #{@nHiddenTreasures} \n specific Hidden Treasures #{@specificHiddenTreasures} \n specific Visible Treasures #{@specificVisibleTreasures} \n"
  end
end
