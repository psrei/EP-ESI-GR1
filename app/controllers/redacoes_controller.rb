class RedacaoController < ApplicationController
    def new
        @redacao = Redacao.new
    end
    def create
        @redacao = Redacao.new(Redacao_params) 
        if @redacao.save
            redirect_to @redacao
        else 
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end  
    
    def show
        @redacao = Redacao.find(params[:id])
    end
    
    private
    def aluno_params
        params.require(:redacao).permit(:texto)
    end

end
