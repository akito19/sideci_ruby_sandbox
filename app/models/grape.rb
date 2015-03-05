class Grape < ActiveRecord::Base
  def cut
    "cut cut!"
  end

  def slice
    p "slice#{params}"
  end

  def buy
  end

  def hoge
    
  end
end
