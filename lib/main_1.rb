# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module Napakalaki
  require_relative 'prize'
  require_relative 'badStuff'
  require_relative 'monster'

  
  monsters=Array.new
  
  #monstruos
  prizeBonanza=Prize.new(2,1)
  badStuffBonanza=BadStuff.newLevelSpecificTreasures('Pierdes tu armadura visible y otra oculta',0,[ARMOR],Array.new)
  monsters<<Monster.new('Byakhees de Bonanza',8,prBonanza,bsBonanza)

  prizeChibi=Prize.new(1,1)
  badStuffChibi=BadStuff.newLevelSpecificTreasures('Embobados con el lindo primigenio te descartas de tu casco visible',0,[HELMET],Array.new)
  monsters<<Monster.new('Chibithulhu',2,prChibi,bsChibi)
  
  prizeSopor=Prize.new(1,1)
  badStuffSopor=BadStuff.newLevelSpecificTreasures('El primordial bostezo contagioso. Pierdes el calzado visible',0,[SHOE],Array.new)
  monsters<<Monster.new('El sopor de Dunwich',2,prSopor,bsSopor)
  
  prizeAngeles=Prize.new(4,1)
  badStuffAngeles=BadStuff.newLevelSpecificTreasures('Te atrapan para llevarte de fiesta y te dejan caer en mitad del vuelo. Descarta una mano visible y una oculta',0,[ONEHAND],[ONEHAND])
  monsters<<Monster.new('Angeles de la Noche Ibicenca',14,prAngeles,bsAngeles)
  
  prizeGorron=Prize.new(3,1)
  badStuffGorron=BadStuff.newLevelNumersOfTreasures('Pierdes todos tus tesoros visibles',0,10,0)
  monsters<<Monster.new('El Gorron en el Umbral',10,prGorron,bsGorron)
  
  prizeHp=Prize.new(2,1)
  badStuffHp=BadStuff.newLevelSpecificTreasures('Pierdes la armadura visible',0,[ARMOR],[])
  monsters<<Monster.new('H.P.Munchcraft',6,prHp,bsHp)
  
  prizeBichgooth=Prize.new(1,1)
  badStuffBichgooth=BadStuff.newLevelSpecificTreasures('Sientes bichos bajo la ropa. Descarta la armadura visible',0,[ARMOR],[])
  monsters<<Monster.new('H.P.Munchcraft',2,prBichgooth,bsBichgooth)

  prizeRey=Prize.new(4,2)
  badStuffRey=BadStuff.newLevelNumersOfTreasures('Pierdes 5 niveles y 3 tesoros visibles',5,3,0)
  monsters<<Monster.new('El rey de rosa',13,prRey,bsRey)

  prizeTinieblas=Prize.new(1,1)
  badStuffTinieblas=BadStuff.newLevelNumersOfTreasures('Toses los pulmones y pierdes 2 niveles',2,0,0)
  monsters<<Monster.new('La que redacta en las tinieblas',2, prTinieblas,bsTinieblas)

  prizeHondos=Prize.new(2,1)
  badStuffHondos=BadStuff.newDeath('Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto')
  monsters<<Monster.new('Los Hondos',8,prHondos,bsHondos)
  
  prizeSemillas=Prize.new(2,1)
  badStuffSemillas=BadStuff.newLevelNumersOfTreasures('Ples y 2 tosoros ocultos',2,0,2)
  monsters<<Monster.new('Semillas Cthulhu',4,prSemillas,bsSemillas)
  
  prizeDame=Prize.new(2,1)
  badStuffDame=BadStuff.newLevelSpecificTreasures('Te intentas escaquear. Pierdes una mano visible',0,[ONEHAND],0)
  monsters<<Monster.new('Dameargo',1,prDame,bsDame)
  
  prizePollo=Prize.new(2,1)
  badStuffPollo=BadStuff.newLevelNumersOfTreasures('Da mucho asquito. Pierdes 3 niveles',3,0,0)
  monsters<<Monster.new('Pollipolipo volante',3,prPollo,bsPollo)
  
  prizeGotho=Prize.new(3,1)
  badStuffGotho=BadStuff.newDeath('No le hace gracia que pronuncien mal su nombre. Estas muerto')
  monsters<<Monster.new('Yskhtihyssg-Goth',12,prGotho,bsGotho)
  
  prizeFamilia=Prize.new(4,1)
  badStuffFamilia=BadStuff.newDeath('La familia te atrapa. Estas muerto')
  monsters<<Monster.new('Familia Feliz',1,prFamilia,bsFamilia)
  
  prizeRobo=Prize.new(2,1)
  badStuffRobo=BadStuff.newLevelSpecificTreasures('La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2 manos visible',2,[BOTHHAND],[])
  monsters<<Monster.new('Roboggoth',8,prRobo,bsRobo)
  
  prizeEspia=Prize.new(1,1)
  badStuffEspia=BadStuff.newLevelSpecificTreasures('Te asusta en la noche. Pierdes un casco visible',0,[HELMET],[])
  monsters<<Monster.new('El espia',8,prEspia,bsEspia)
  
  prizeLenguas=Prize.new(1,1)
  badStuffLenguas=BadStuff.newLevelNumersOfTreasures('Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles',2,5,0)
  monsters<<Monster.new('El Lenguas',5,prLenguas,bsLenguas)
  
  prizeFalo=Prize.new(1,1)
  badStuffFalo=BadStuff.newLevelSpecificTreasures('Te faltan manos para tanta cabeza. pierdes 3 niveles y tus tesoros visibles de las manos',3,[ONEHAND,ONEHAND,BOTHHAND],0)
  monsters<<Monster.new('Bicefalo',20,prFalo,bsFalo)
  
  
  for m in monsters
    if m.getCombatLevel() > 10
      puts m.to_s
    end
  end
    

   for m in monsters
     if m.getBs.getnVisible==0 && m.getBs().nHidden()==0 &&  m.getBs().levels()>0
       puts m.to_s()
     end
   end
   
  for m in monsters
    if m.price.getLevel>1
      puts m.to_s()
    end
  end
  
  
  for m in monsters
    if m.getBs().getnVisible()!=0 || m.getBs().nHidden()!=0
      puts m.to_s()
    end
  end
  
end
