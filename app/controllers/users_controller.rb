class UsersController < ApplicationController
    skip_before_action:verify_authenticity_token
    def new
        @user=User.new
    end
    
    def index
        users=User.all
        render json: users
    end
    def create
        user=User.create(username:params[:username],password:params[:password])
        # if user.save
            # users=User.all
            # render json:users
            redirect_to root_path
        # else
        #     render 'new'
        # end
    end

    def edit
        if !logged_in?
            #redirect to login page
        else
            #do cool stuff
        end
    end

    private
     
    def user_params
        params.require(:user).permit(:username,:password)
    end
end