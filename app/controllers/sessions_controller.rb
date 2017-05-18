class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:success] = "Welcome!"
            redirect_to '/'
        else
            flash[:warning] = "Invalid email or password"
            redirect_to '/login'
        end

    end

    def destroy
        session[:user_id] = nil
        flash[:success] = 'K bye'
        redirect_to '/login'
    end
end
