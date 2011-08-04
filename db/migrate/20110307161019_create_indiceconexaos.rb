class CreateIndiceconexaos < ActiveRecord::Migration
  def self.up
    create_table :indiceconexaos do |t|
      t.string :senha

      t.timestamps
    end
  end

  def self.down
    drop_table :indiceconexaos
  end
end
