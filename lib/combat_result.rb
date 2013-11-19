module Napakalaki
  
  require "enumeration"
  
  class CombatResult 
    
    include Enumeration 
 
    def initialize (winAndWinGame , win, lose , loseAndEscape, loseAndDie)
       
      @@WAWG=WinAndWinGame 
      @@Win=win            
      @@Lose=lose
      @@LAE=LoseAndEscape
      @@LAD=LoseAndDie
      
    end
    
  end 

end
