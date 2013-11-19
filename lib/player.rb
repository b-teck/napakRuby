module Napakalaki
    
  require_relative 'CombatResult'
  require_relative 'PruebaNapalaki'
  require_relative 'CardDealer'
  require_relative 'Treasure'
  require_relative 'Dice'

  class Player
    
    def initialize(name,level,dead)
      
      @name=name
      @level=level
      @dead=dead
      
    end
    
  def Player(name)
  end
    
  def  self.bringToLife()
  end
    
  def  self.getcombatLevel()
  end
   
  def  self.incrementLevels(i)
  end
  
  def  self.decrementLevels(i)
  end
   
  def  self.setPendingBadStuff(b)
  end
  
  def  self.dieifNoTreasures()
  end
  
  def  self.discardNecklaceisVisible()
  end
  
  def  self.die()
  end

  def  self.computeGoldCoinsValue(t=new.Array)
  end
 
  def  self.canIBuyLevels(I)  
  end
  
  def  self.applyPrize(p)
  end
  
  def  self.applyBadStuff(bad)
  end
   
  def  self.canMakeTreasureVisible(t)
  end
  
  def  self.howManyVisibleTreasures (tKind)
  end
  
  def  isDeath()
  end
  
  def getHiddenTreasures()
  end
   
  def getVisibleTreasures()
  end
  
  def combat(m)
  end
  
  def  makeTreasureVisible(t)
  end
  
  def  discardVisibleTreasure(t)
  end
 
  def  discardHiddenTreasure(t)
  end
  
  def  buyLevels(visible,hidden)
  end
   
  def  validState()
  end
  
  def  initTreasures()
  end
  
  def  hasVisibleTreasures()
  end

  def  getLevels()   
  end
  
  end
