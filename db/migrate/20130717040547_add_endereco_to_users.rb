class AddEnderecoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cep, :integer
    add_column :users, :uf, :string
    add_column :users, :cidade, :string
    add_column :users, :bairro, :string
    add_column :users, :logradouro, :string
  end
end
