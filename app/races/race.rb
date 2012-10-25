module Race
  #Game::STATS.each do |s|
    #method_name = "#{s[1][:short_name].downcase}".to_sym
    #define_method method_name do
      #super() + 0
    #end
  #end

  def dex
    super + 0
  end
  def int
    super + 0
  end
  def con
    super + 0
  end
  def str
    super + 0
  end
  def cha
    super + 0
  end
  def wis
    super + 0
  end
end
