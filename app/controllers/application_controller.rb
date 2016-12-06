class ApplicationController < ActionController::Base
  CONST_1 = :dummya
  CONST_2 = :dummyb
  CONST_3 = :dummyc
  CONST_4 = :dummyd
  CONST_5 = :dummye
  CONST_6 = :dummyf
  CONST_7 = :dummyg
  CONST_8 = :dummyh

  # protect_from_forgery with: :exception
  def index3
    "test"
  end
  def index2
  end
  def index
  end
  def tetete
  end
private

  def waste_action
    p "test"
    return true
  end

  def some_action
  end

end
