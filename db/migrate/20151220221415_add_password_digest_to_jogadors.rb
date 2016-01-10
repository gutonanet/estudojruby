class AddPasswordDigestToJogadors < ActiveRecord::Migration
  def change
    add_column :jogadors, :password_digest, :string
  end
end
