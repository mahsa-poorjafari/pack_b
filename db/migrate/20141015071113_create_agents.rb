class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name_fa
      t.string :name_en
      t.string :address_fa
      t.string :address_en
      t.string :phone

      t.timestamps
    end
  end
end
