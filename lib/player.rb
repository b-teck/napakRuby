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
  @pendingBadStuff ;
  
  def Player(name)
    self.name=name
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
    monedas=0
    for i in t
      monedas+=i.goldCoins
    end
    niveles=monedas/1000;
    return niveles.ceil;
  end
 
  def  self.canIBuyLevels(l) 
    if(self.level+l<=4)
      return true
    else
      return false
    end
  end
  
  def  self.applyPrize(p)
  end
  
  def  self.applyBadStuff(bad)
    pendingBadStuff=bad;;
  end
   
  def  self.canMakeTreasureVisible(t)
  end
  
  def  self.howManyVisibleTreasures (tKind)
    tesoros=0
    for i in visibleTreasures
      if (i.tipo == tKind)
        tesoros=tesoros+1;
      end
    end
  end
  
  def  isDeath()
    if(self.death)
      return true
    else
      return false
    end
  end
  
  def getHiddenTreasures()
    for i in hiddenTreausures
      puts i;
    end
  end
   
  def getVisibleTreasures()
    for i in visibleTreausures
      puts i;
    end
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
    if(visibleTreasures.size>0)
      return true
    else
      return false
    end
  end

  def  getLevels()
      nivel=0
      collar=false
      
      for i in hiddenTreasures
        if (i.tipo=="necklace")
          collar=true
        end
      end
      
      for j in visibleTreasures
        if (j.tipo=="necklace")
          collar=true
        end
      end
 
      if(collar)
        for h in hiddenTreasures
          nivel+=h.maxBonus
        end
        for v in visibleTreasures
          nivel+=v.maxBonus
        end
      else
        for h in hiddenTreasures
          nivel+=h.minBonus
        end
        for v in visibleTreasures
          nivel+=v.minBonus
        end
      end
      nivel+=self.level;
      return nivel;
  end
  
  end
end