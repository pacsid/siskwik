class AddEnderecoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :endereco, :string
  end
end
