class QuestionController < ApplicationController
  def index
    @questions = Asked.all
  end

  def show
    @name = params[:name]
    @content = params[:content]
    @name_option = params[:name_option]
    
    if @name_option == "익명"
      @name = "익명"
      Asked.create(
        name: @name,
        content: @content
      )
    else
      Asked.create(
        name: @name,
        content: @content
      )
    end
  end
  
  def sign_up
  
  end
  
  def sign_up_process
    @email = params[:email]
    @name = params[:name]
    @password = params[:password]
    
    User.create(
      email: @email,
      name: @name,
      password: @password
    )
  end
  
  def login
  
  end
  
  def login_process
    @email = params[:email]
    @password = params[:password]
    @msg =""
    
    #유저 인증
    user = User.find_by(email: @email)
    # 해당하는 이메일을 가진 유저가 있다면
    if user
      if user.password == @password
        session[:user_email] = user.email
        redirect_to '/'
      else
        @msg ="비밀번호가 맞지 않쟈나"
      end
    else
      @msg ="이메일이 존재하지 않쟈나."
    end
  end
  
  def logout
    session.clear
    redirect_to '/'
  end
  
  
end
