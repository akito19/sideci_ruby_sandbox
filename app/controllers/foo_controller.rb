class FooController < ActionController::Base  
  def new_user
    user = User.first(:conditions => ("username = '#{params[:username]}'"))
    if user.blank?
      render text: user.username
      return
    end

    render text: "test"
  end
  private

   
  protected
    def sample(group)
      group.map {  |v| v.foo.count }
    end
 
  def hoge
    %i(une deux troi quattre cinq).each do |num|
      p "num: #{num}"
    end
  end
 
end
