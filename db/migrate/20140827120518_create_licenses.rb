class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :title_en
      t.string :title_fa
      t.string :text_en
      t.string :text_fa

      t.timestamps
    end
  end
end
