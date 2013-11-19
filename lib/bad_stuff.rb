# To change this template, choose Tools | Templates
# and open the template in the editor.
require_relative 'treasure_kind'

class BadStuff
  private
  def initialize(text,levels,nVisible,nHidden,sHidden,sVisible,muerte)
    @text=text
    @levels=levels
    @nVisibleTreasures=nVisible
    @nHiddenTreasures=sHidden
    @specificHiddenTreasures=sHidden
    @specificVisibleTreasures=sVisible
    @death=muerte
  end
  
  public
  def BadStuff.newDeath (text)
    BadStuff.new(text,0,0,0,Array.new,Array.new,true)
  end
  
  def BadStuff.newNumers(text,levels,nVisible,nHidden)
    BadStuff.new(text.levels,nVisible,nHidden,Array.new,Array.new,false)
  end
  #Consultores
  def text
      @text
  end
  
  def levels 
    @levels
  end
  
  def nVisible
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
   
  
end

