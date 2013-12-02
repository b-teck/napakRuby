module Napakalaki_game
  
  require "singleton"
  
  class CardDealer 
    include Singleton 
    @unusedMonsters=Array.new,
    @usedMonsters=Array.new,  
    @unusedTreasures=Array.new,
    @usedTreasures=Array.new;
  
    def initialize(instance=NULL)
      
      @instance=instance 
      
    end
    
    attr_accesor :unusedMonsters, :usedMonsters,  :unusedTreasures, :usedTreasure;
    
    def self.initTreasureCardDeck()
      
    end
    
    def self.initMonsterCardDeck()
    end
    
    def self.shuffleTreasures()
    end
    
    def self.shuffleMonsters
    end
    
    def getInstance()
      return instance;
    end
    def nextMonster()
      if(unusedTreasures.empty)
             unusedTreasures = usedTreasures;
             usedTreasures.clear;
             (unusedTreasures);
      end
        tesoro = unusedTreasures.get();
        unusedTreasures.remove(tesoro);
        return tesoro;
      
    end
    def giveTreasureBack(t)
      self.unusedTrasures.add(t);
    end
    def giveMonsterBack(m)
      self.unusedMonster.add(m)
    end
    def initCard
        self.initMonsterCardDeck();
        self.initTreasureCardDeck()
    end
    
  end 

end
