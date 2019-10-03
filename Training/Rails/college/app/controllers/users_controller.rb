class UsersController < ApplicationController
    def show
        id = params[:id].to_i
        @user = User.find_by(id:id)
        if @user == nil
            
        else render 'users/show'
        end
    end


    def destroy
        id = params[:id]
        @user = User.find(id)
        if @user == nil
        elsif @user!=nil
            if @user.destroy
                session[:user_id] = nil
                redirect_to root_path
                #flash : Account deleted
            else
            end
        end
    end
end