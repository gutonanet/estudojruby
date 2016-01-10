class AddSenhaToJogadors < ActiveRecord::Migration
  def change
    add_column :jogadors, :senha, :string
  end
end
