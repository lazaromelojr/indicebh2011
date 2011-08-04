class CreateIndiceBhs < ActiveRecord::Migration
  def self.up
    create_table :indice_bhs do |t|
      t.text :testoprincipal

      t.timestamps
    end
  end

  def self.down
    drop_table :indice_bhs
  end
end
