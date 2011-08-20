class CreateAdminIndicebhs < ActiveRecord::Migration
  def self.up
    create_table :admin_indicebhs do |t|
      t.string :email
      t.string :senha

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_indicebhs
  end
end
