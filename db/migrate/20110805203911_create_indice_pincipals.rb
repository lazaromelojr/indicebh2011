class CreateIndicePincipals < ActiveRecord::Migration
  def self.up
    create_table :indice_pincipals do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :indice_pincipals
  end
end
