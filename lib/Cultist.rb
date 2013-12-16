class Cultist
  include Card
  
  module Card
  
  def initialize(nombre, nivelesganados)
    @name= nombre
    @gainedLevels=nivelesganados
  end
  
  def nombre
    @name
  end
  def niveles
    @gainedLevels
  end
  
  def getBasicValue
    @gainedLevels
  end
  
  def GetSpecialValue
      return getBasicValue*CultisPlayer.getTotalCultistPLayers
  end
  
  end
end
