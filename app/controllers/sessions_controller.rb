class SessionsController <ApplicationController
    skip_before_action:verify_authenticity_token
    def index
        users=User.all
        render json: users
    end

    def create
        user=User.find_by(username:params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            # session[:user_id]=user.id
            render json:user
            puts "user"
            # redirect_to root_path
        else
            puts "kk"
            render 'new'
        end
    end

    def destroy
        session[:user_id]=nill
        redirect_to root_path
    end


end