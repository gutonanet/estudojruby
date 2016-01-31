class SessaoController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create
    @jogador = Jogador.find_by(email:params[:session][:email].downcase)
    if(@jogador && @jogador.authenticate(params[:session][:password]))
      sign_in(@jogador)
      redirect_to @jogador
    else
      render 'new'
    end
    def destroy
      sign_out
      redirect_to root_url
    end
  end
end
