class CreateServicosindices < ActiveRecord::Migration
  def self.up
    create_table :servicosindices do |t|
      t.string :servico

      t.timestamps
    end
  end

  def self.down
    drop_table :servicosindices
  end
end
