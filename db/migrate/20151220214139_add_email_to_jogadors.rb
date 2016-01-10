class AddEmailToJogadors < ActiveRecord::Migration
  def change
    add_column :jogadors, :email, :string
    add_index :jogadors, :email
  end
end
