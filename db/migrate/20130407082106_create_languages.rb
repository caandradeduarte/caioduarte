class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :locale
      t.string :flag

      t.timestamps
    end
  end
end
