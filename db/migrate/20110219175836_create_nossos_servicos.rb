class CreateNossosServicos < ActiveRecord::Migration
  def self.up
    create_table :nossos_servicos do |t|
      t.text :pesquisaQuantitativa
      t.text :pesquisaQualitativa

      t.timestamps
    end
  end

  def self.down
    drop_table :nossos_servicos
  end
end
