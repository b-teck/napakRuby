module Napakalaki
  
  require "singleton"
  
  class Dice 
    include Singleton 
 
    def initialize(instance=NULL)
      
      @instance=instance #Esto realmente no se si es asi.
      
    end
    def self.Dice()
      
    end
    def getInstance()
    end
    
    def nextNumber()
    end
    
  end 

end

