class CreatePesquisaqualitativas < ActiveRecord::Migration
  def self.up
    create_table :pesquisaqualitativas do |t|
      t.text :pesquisaqualitativa

      t.timestamps
    end
  end

  def self.down
    drop_table :pesquisaqualitativas
  end
end
