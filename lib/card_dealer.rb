module Napakalaki_game
  
  require "singleton"
  
  class CardDealer 
    include Singleton 
 
    def initialize(instance=NULL)
      
      @instance=instance #Esto realmente no se si es asi.
      
    end
    
    def self.initTreasureCardDeck()
    end
    
    def self.initMonsterCardDeck()
    end
    
    def self.shuffleTreasures()
    end
    
    def self.shuffleMonsters
    end
    
    def getInstance()
      
    end
    def nextMonster()
      
    end
    def giveTreasureBack
      
    end
    def giveMonsterBack
      
    end
    def initCard
      
    end
    
  end 

end
