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
    
    def self.initTreasureCardDeck
      #Mazo de tesoros
      
      #Si mi amo
      tr_miamo=Treasure.new("Si mi amo",0,4,7,[HELMET])
      unusedTreasures<<tr_miamo
        
      #Botas de investigacion
      tr_investigacion=Treasure.new("Botas de Investigacion",600,3,4,[SHOE])
      unusedTreasures<<tr_investigacion
        
      #Capucha de Cthulhu
      tr_capucha=Treasure.new("Capucha de Cthulhu",500,3,5,[HELMET])
      unusedTreasures<<tr_capucha

      #A prueba de Babas
      tr_babas=Treasure.new("A prueba de Babas",400,2,5,[ARMOR])
      unusedTreasures<<tr_babas
        
      #Botas de lluvia
      tr_lluvia=Treasure.new("Botas de Lluvia",800,1,1,[BOTHHAND])
      unusedTreasures<<tr_lluvia
      
      #Casco minero
      tr_casco=Treasure.new("Casco Minero",400,2,4,[HELMET])
          unusedTreasures<<tr_casco
          
      #Ametralladora Thompson
      tr_thompson=Treasure.new("Ametralladora Thompson",600,4,8)
      unusedTreasures<<tr_thompson
      
      #Camiseta de la UGR
      tr_ugr=Treasure.new("Camiseta d ela UGR",100,1,7,[ARMOR])
      unusedTreasures<<tr_ugr
          
      #Clavo de rail ferroviario
      tr_clavo=Treasure.new("Clavo de Rail Ferroviario",400,3,6,[ONEHAND])
      unusedTreasures<<tr_clavo
      
      #Cuchillo de sushi arcano
      tr_cuchillo=Treasure.new("Cuchillo de sushi Arcano",300,2,3,[ONEHAND])
      unusedTreasures<<tr_cuchillo
       
      #Fez alópodo
      tr_fez=Treasure.new("Fez alopodo",700,3,5,[HELMET])
      unusedTreasures<<tr_fez
      
      #Hacha Prehistorica
      tr_hacha=Treasure.new("Hacha Prehistorico",500,2,5,[ONEHAND])
      unusedTreasures<<tr_hacha
      
      #El aparato del PR. Tesla
      tr_tesla=Treasure.new("EL aparato del Pr.Tesla",900,4,8,[ARMOR])
      unusedTreasures<<tr_tesla
      
      #Gaita
      tr_gaita=Treasure.new("Gaita",500,4,5,[BOTHHAND])
      unusedTreasures<<tr_gaita
      
      #Insecticida
      tr_insecticida=Treasure.new("Insecticida",300,2,3,[ONEHAND])
      unusedTreasures<<tr_insecticida
           
      #Escopeta de Tres cañones
      tr_escopeta=Treasure.new("Escopeta de 3 cañones",700,4,6,[BOTHHAND])
      unusedTreasures<<tr_escopeta
         
      #Garabato Mistico
      tr_garabato=Treasure.new("Garabato Mistico",300,2,2,[ONEHAND])
      unusedTreasures<<tr_garabato
      
      #LA fuerza de MR.T
      tr_T=Treasure.new("La Fuerza de MR.T",1000,0,0,[NECKLACE])
      unusedTreasures<<tr_T
      
      #LA rebeca metalica
      tr_metallica=Treasure.new("La Rebeca Metallica",400,2,3,[ARMOR])
      unusedTreasures<<tr_metallica
      
      #Mazo de los antiguos
      tr_antiguos=Treasure.new("Mazo de los antiguos",200,3,4,[ONEHAND])
      unusedTreasures<<tr_antiguos
      
      #Necroplayboycon
      tr_play=Treasure.new("Necroplayboycon",300,3,5,[ONEHAND])
      unusedTreasures<<tr_play
      
      #Lanzallamas
      tr_llamas=Treasure.new("Lanzallamas",800,4,8,[BOTHHAND])
      unusedTreasures<<tr_llamas
      
      #Necrocomicon
      tr_necro=Treasure.new("Necrocomicon",100,1,1,[ONEHAND])
      unusedTreasures<<tr_necro
     
      #Necronomicon
      tr_micon=Treasure.new("Necronomico",800,5,7,[BOTHHAND])
      unusedTreasures<<tr_micon
      
      #Linterna a dos manos
      tr_linterna=Treasure.new("Linterna a 2 manos",400,3,6,[BOTHHAND])
      unusedTreasures<<tr_linterna
      
      #Necrognomicon
      tr_gnomo=Treasure.new("Necrognomicon",200,2,4,[ONEHAND])
      unusedTreasures<<tr_gnomo
            
      #Necrotelecom
      tr_tele=Treasure.new("Necrotelecom",300,2,3,[HELMET])
      unusedTreasures<<tr_tele
      
      #Porra Preternatural
      tr_porra=Treasure.new("Porra Preternatual",200,2,3,[ONEHAND])
      unusedTreasures<<tr_porra

      #Tentaculo de pega
      tr_culo=Treasure.new("Tentaculo de pega",200,0,1,[HELMET])
      unusedTreasures<<tr_culo
      
      #Zapatos deja-amigos
      tr_zapato=Treasure.new("Zapato deja-amigos",500,0,1,[SHOE])
      unusedTreasures<<tr_zapato

      #Shogulador
      tr_shogulador=Treasure.new("Shogulador",600,1,1,[BOTHHAND])
      unusedTreasures<<tr_shogulador
            
      #Varita de atizamiento
      tr_varita=Treasure.new("Varita de Atizamiento",400,3,4,[ONEHAND])
      unusedTreasures<<tr_varita
    end
    
  
    def self.initMonsterCardDeck
      
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
    
    def self.initCultistCardDeck
      unusedCultists.add(Cultist.new('Sectario',1))
      unusedCultists.add(Cultist.new('Sectario',2))
      unusedCultists.add(Cultist.new('Sectario',1))
      unusedCultists.add(Cultist.new('Sectario',2))
      unusedCultists.add(Cultist.new('Sectario',1))
      unusedCultists.add(Cultist.new('Sectario',1))
    end
    
    def self.shuffleTreasures
      unusedTreasures.shuffle
    end
    
    def self.shuffleMonsters
      unusedMonsters.shuffle
    end
    
    def self.shuffleCultist
      unusedCultists.shuffle
    end
    
    def getInstance()
      return instance;
    end
    
    def nextMonster()
      if unusedMonsters.length==0
         unusedMonsters=usedMonsters
         shuffleMonsters
       end
       tmp=unusedMonsters.pop
       return tmp
    end
    
    def nextCultist()
      shuffleCultist
         tmp=unusedCultist.pop
         return tmp  
    end
    
    def nextTresaure()
      if unusedTreasures.length==0
         unusedTreasures=usedTreasures
         shuffleTreasures
       end
       tmp=unusedTreasures.pop
       return tmp
    end  
    
    def giveTreasureBack(t)
      unusedTreasures<<t
    end
    
    def giveMonsterBack(m)
      unusedMonsters<<m
    end
    
    def initCard
        initMonsterCardDeck
        initTreasureCardDeck
        initCultistCardDeck
    end
    
  end 

end
