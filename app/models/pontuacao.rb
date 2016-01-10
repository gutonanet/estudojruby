class Pontuacao < ActiveRecord::Base
  belongs_to :jogador
  belongs_to :mapa
end
