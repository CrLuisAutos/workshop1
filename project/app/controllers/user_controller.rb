class UserController < ApplicationController
  def index
    user= User.all
    render(json: user, status: 200)
  end
  def new
    
  end
  def index
    user= User.all
    render(json: user, status: 200)
  end

  def create
    user= User.new
    user.nombre=params[:nombre]
    user.apellido=params[:apellido]
    user.password=params[:password]
    user.email=params[:email]
    user.username=params[:username]
    
    if user.save
      render(json: user, status: 201 , location: user)
    else 
      render(json: user.errors, status: 422)
    end
  end

  def update
    user= User.find_by id:(params[:id])
    if user.update(:user)
      render(json: user, status: 201)
    else
      render(json: user.errors, status: 422)
    end
  end

  def destroy
    user=User.find_by id:(params[:id])
    if user != nil
      if user.destroy
        head 204
      end
    else
       head 422
   end
  end
end
