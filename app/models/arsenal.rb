class Arsenal < ActiveRecord::Base
  belongs_to :jogador
  belongs_to :item
end
