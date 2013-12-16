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
      
      #Byakhees de bonanza.
      prBonanza=Prize.new(2,1)
      bsBonanza=BadStuff.newLevelSpecificTreasures('Pierdes tu armadura visible y otra oculta',0,[ARMOR],Array.new)
      unusedMonsters<<Monster.new('Byakhees de Bonanza',8,prBonanza,bsBonanza)


      #Chibithulhu

      prChibi=Prize.new(1,1)
      bsChibi=BadStuff.newLevelSpecificTreasures('Embobados con el lindo primigenio te descartas de tu casco visible',0,[HELMET],Array.new)
      unusedMonsters<<Monster.new('Chibithulhu',2,prChibi,bsChibi)

      #El sopor de Dunwich

      prSopor=Prize.new(1,1)
      bsSopor=BadStuff.newLevelSpecificTreasures('El primordial bostezo contagioso. Pierdes el calzado visible',0,[SHOE],Array.new)
      unusedMonsters<<Monster.new('El sopor de Dunwich',2,prSopor,bsSopor)

      #Angeles de la noche ibicenca.

      prAngeles=Prize.new(4,1)
      bsAngeles=BadStuff.newLevelSpecificTreasures('Te atrapan para llevarte de fiesta y te dejan caer en mitad del vuelo. Descarta una mano visible y una oculta',0,[ONEHAND],[ONEHAND])
      unusedMonsters<<Monster.new('Angeles de la Noche Ibicenca',14,prAngeles,bsAngeles)

      #El gorron del humbral

      prGorron=Prize.new(3,1)
      bsGorron=BadStuff.newLevelNumersOfTreasures('Pierdes todos tus tesoros visibles',0,10,0)
      unusedMonsters<<Monster.new('El Gorron en el Umbral',10,prGorron,bsGorron)

      # H.P munchcraft

      prHp=Prize.new(2,1)
      bsHp=BadStuff.newLevelSpecificTreasures('Pierdes la armadura visible',0,[ARMOR],[])
      unusedMonsters<<Monster.new('H.P.Munchcraft',6,prHp,bsHp)

      #Bichgooth

      prBichgooth=Prize.new(1,1)
      bsBichgooth=BadStuff.newLevelSpecificTreasures('Sientes bichos bajo la ropa. Descarta la armadura visible',0,[ARMOR],[])
      unusedMonsters<<Monster.new('Bichgooth',2,prBichgooth,bsBichgooth)

      #El rey de rosa

      prRey=Prize.new(4,2)
      bsRey=BadStuff.newLevelNumersOfTreasures('Pierdes 5 niveles y 3 tesoros visibles',5,3,0)
      unusedMonsters<<Monster.new('El rey de rosa',13,prRey,bsRey)

      #La que redacta en las tinieblas

      prTinieblas=Prize.new(1,1)
      bsTinieblas=BadStuff.newLevelNumersOfTreasures('Toses los pulmones y pierdes 2 niveles',2,0,0)
      unusedMonsters<<Monster.new('La que redacta en las tinieblas',2, prTinieblas,bsTinieblas)

      #Los hondos

      prHondos=Prize.new(2,1)
      bsHondos=BadStuff.newDeath('Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto')
      unusedMonsters<<Monster.new('Los Hondos',8,prHondos,bsHondos)

      #Semillas Cthulhu

      prSemillas=Prize.new(2,1)
      bsSemillas=BadStuff.newLevelNumersOfTreasures('Ples y 2 tosoros ocultos',2,0,2)
      unusedMonsters<<Monster.new('Semillas Cthulhu',4,prSemillas,bsSemillas)

      #Darmeargo

      prDame=Prize.new(2,1)
      bsDame=BadStuff.newLevelSpecificTreasures('Te intentas escaquear. Pierdes una mano visible',0,[ONEHAND],0)
      unusedMonsters<<Monster.new('Dameargo',1,prDame,bsDame)

      #Pollipolipo volante

      prPollo=Prize.new(2,1)
      bsPollo=BadStuff.newLevelNumersOfTreasures('Da mucho asquito. Pierdes 3 niveles',3,0,0)
      unusedMonsters<<Monster.new('Pollipolipo volante',3,prPollo,bsPollo)

      #Yskhtihyssg-Goth

      prGotho=Prize.new(3,1)
      bsGotho=BadStuff.newDeath('No le hace gracia que pronuncien mal su nombre. Estas muerto')
      unusedMonsters<<Monster.new('Yskhtihyssg-Goth',12,prGotho,bsGotho)

      #Famila Feliz

      prFamilia=Prize.new(4,1)
      bsFamilia=BadStuff.newDeath('La familia te atrapa. Estas muerto')
      unusedMonsters<<Monster.new('Familia Feliz',1,prFamilia,bsFamilia)

      #Roboggoth

      prRobo=Prize.new(2,1)
      bsRobo=BadStuff.newLevelSpecificTreasures('La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2 manos visible',2,[BOTHHAND],[])
      unusedMonsters<<Monster.new('Roboggoth',8,prRobo,bsRobo)

      #El espia

      prEspia=Prize.new(1,1)
      bsEspia=BadStuff.newLevelSpecificTreasures('Te asusta en la noche. Pierdes un casco visible',0,[HELMET],[])
      unusedMonsters<<Monster.new('El espia',8,prEspia,bsEspia)

      #El lenguas

      prLenguas=Prize.new(1,1)
      bsLenguas=BadStuff.newLevelNumersOfTreasures('Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles',2,5,0)
      unusedMonsters<<Monster.new('El Lenguas',5,prLenguas,bsLenguas)

      #Bicefalo

      prFalo=Prize.new(1,1)
      bsFalo=BadStuff.newLevelSpecificTreasures('Te faltan manos para tanta cabeza. pierdes 3 niveles y tus tesoros visibles de las manos',3,[ONEHAND,ONEHAND,BOTHHAND],0)
      unusedMonsters<<Monster.new('Bicefalo',20,prFalo,bsFalo)

      #El mal indecible impronunciable

      prIndecible = Prize.new(3,1)
      bsIndecible = BadStuff.newLevelSpecificTreasures('Pierdes una mano visible',0,[ONEHAND],[])
      unusedMonsters<<Monster.new('El mal indecible impronunciable',10,prIndecible,bsIndecible)

      #Testigos oculares

      prTestigos = Prize.new(2,1)
      bsTestigos = BadStuff.newLevelNumersOfTreasures('Pierdes todos tus tesoros visibles. Jajaja',0,10,0)
      unusedMonsters<<Monster.new('Testigos oculares',6,prTestigos,bsTestigos)

      #El gran Cthulhu

      prGran = Prize.new(2,5)
      bsGran = BadStuff.newDeath('Hoy no es tu dia de suerte. Mueres.')
      unusedMonsters<<Monster.new('El gran Cthulhu',20,prGran,bsGran)

      #Serpiente Politico

      prSerpiente= Prize.new(2,1)
      bsSerpiente = BadStuff.newLevelNumersOfTreasures('Tu gobierno te recorta dos niveles',2,0,0)
      unusedMonsters<<Monster.new('Serpiente Politico',8,prSerpiente,bsSerpiente)

      #Felpuggoth

      prFelpuggoth = Prize.new(1,1)
      bsFelpuggoth = BadStuff.newLevelSpecificTreasures('Pierdes tu casco y tu armadura visible. Pierdes tus manos ocultas',0,[HELMET,ARMOR],[BOTHHAND])
      unusedMonsters<<Monster.new('Felpuggoth',2,prFelpuggoth,bsFelpuggoth)

      #Shoggoth

      prShoggoth = Prize.new(4,2)
      bsShoggoth = BadStuff.newLevelNumersOfTreasures('Pierdes dos niveles',2,0,0)
      unusedMonsters<<Monster.new('Shoggoth',16,prShoggoth,bsShoggoth)

      #Lolitagooth

      prLolita = Prize.new(1,1)
      bsLolita = BadStuff.newLevelNumbersOfTreasures('Pintalabios negro, pierdes dos niveles',2,0,0)
      unusedMonsters<<Monster.new('Lolitagooth',2,prLolita,bsLolita)
    end
    
    #Mazo sectarios
    
    def self.initCultistCardDeck()
      unusedCultists.push(Cultist.new('Sectario',1))
      unusedCultists.push(Cultist.new('Sectario',2))
      unusedCultists.push(Cultist.new('Sectario',1))
      unusedCultists.push(Cultist.new('Sectario',2))
      unusedCultists.push(Cultist.new('Sectario',1))
      unusedCultists.push(Cultist.new('Sectario',1))
    end
    
    def self.shuffleTreasures()
    end
    
    def self.shuffleMonsters
    end
    
    def getInstance()
      return instance;
    end
    
  def nextMonster()
      if(unusedMonsters.empty)
             unusedMonsters = usedMonsters
             usedMonsters.clear
             (unusedMonsters)
      end
        monster = unusedMonsters.get()
        unusedMonsters.remove(monster)
        return monster
      
    end
    
    def nextCultist()
      if(unusedCultists.emoty)
             unusedCultists = usedCultists
             usedCultists.clear
             (unusedCultists)
      end
      cultists = unusedCultists.get()
      unusedCultists.remove(cultists)
      return cultists
    end
    
    def nextTresaure()
      if(unusedTreasures.emoty)
             unusedTreasures = usedTreasures
             usedTreasures.clear
             (unusedTreasures)
      end
      tesoro = unusedTreasures.get()
      unusedTreasures.remove(tesoro)
      return tesoro
    end
    
    def giveTreasureBack(t)
      self.unusedTrasures.add(t);
    end
    
    def giveMonsterBack(m)
      self.unusedMonster.add(m)
    end
    def initCard
        self.initMonsterCardDeck()
        self.initTreasureCardDeck()
        self.initCultistCardDeck()
    end
    
  end 

end
