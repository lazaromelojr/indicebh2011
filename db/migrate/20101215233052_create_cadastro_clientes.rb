class CreateCadastroClientes < ActiveRecord::Migration
  def self.up
    create_table :cadastro_clientes do |t|
      t.string :nome
      t.string :cnpj
      t.string :telefone
      t.string :fax
      t.string :tipologradouro
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end

  def self.down
    drop_table :cadastro_clientes
  end
end
