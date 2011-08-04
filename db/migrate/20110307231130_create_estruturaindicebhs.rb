class CreateEstruturaindicebhs < ActiveRecord::Migration
  def self.up
    create_table :estruturaindicebhs do |t|
      t.string :senha

      t.timestamps
    end
  end

  def self.down
    drop_table :estruturaindicebhs
  end
end
