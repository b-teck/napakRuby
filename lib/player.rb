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
  
  @hiddenTreasures = Array.new;
  @visibleTreasures = Array.new;
  @pendingBadStuff;
  
  def Player(name)
  end
    
  def  self.bringToLife()
    if(self.death==true)
      self.death=false;
    end
  end
  
    
  def  self.getcombatLevel()
    nivel=0;
    
  end
   
  def  self.incrementLevels(i)
    if(self.level+i<4)
      level+=i
    end
  end
  
  def  self.decrementLevels(i)
    if(self.level-i>1)
      level-=i
    end
  end
   
  def  self.setPendingBadStuff(b)
    pendingBadStuff=b;
  end
  
  def  self.dieifNoTreasures()
    if(hiddenTreasures.size==0 && visibleTreasures==0)
      self.death=true
    end
  end
  
  def  self.discardNecklaceisVisible()
  end
  
  def  self.die()
    self.death=true
  end

  def  self.computeGoldCoinsValue(t=new.Array)
    t.each { |i|.  }
  end
 
  def  self.canIBuyLevels(i)  
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
end