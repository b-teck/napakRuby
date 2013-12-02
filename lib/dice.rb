module Napakalaki
  
  require "singleton"
  
  class Dice 
    include Singleton 
 
    def initialize(instance=nil)
      
      @instance=instance #Esto realmente no se si es asi.
      
    end
    def self.Dice()
      
    end
    def getInstance()
      intance
    end
    
    def nextNumber()
      numero=%w{1,2,3,4,5,6}
      dado = rand(numero.length)
      puts numero[dado]
    end
    
  end 

end

