class SessionController < Application_Controller
    
    def create
        @user = User.find_by(username: params[:username])
        #Autenticação
        if !!@user && @user.authenticate(params[:password])
            #autenticação bem-sucedida - inicia sessão e redireciona
            session[:user_id] = @user.id
            redirect_to user_path
        else
            #falha de autenticação - mensagem de erro
            message = "Falha de autenticação! Verifique usuário e senha"
            redirect_to login_path, notice: message
        end
    end
end
            