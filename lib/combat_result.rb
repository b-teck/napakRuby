module Napakalaki
  
  require "enumeration"
  
  class CombatResult 
    
    include Enumeration 
 
    def initialize(WinAndWinGame , win, lose , LoseAndEscape, LoseAndDie)
       
      @@WAWG=WinAndWinGame 
      @@Win=win            
      @@Lose=lose
      @@LAE=LoseAndEscape
      @@LAD=LoseAndDie
      
    end
    
  end 

end
