class SessaoController < ApplicationController
  before_action : block_access, except: [:destroy]
  def create
    @jogador = Jogador.find_by(email:params[:sessao][:email].downcase)
    if(@jogador && @jogador.authenticate(params[:sessao][:password]))
      sign_in(@jogador)
      redirect_to @jogador
    else
      render 'new'
  end
  end
end
