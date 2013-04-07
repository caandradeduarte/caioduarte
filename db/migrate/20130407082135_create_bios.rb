class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.text :content
      t.references :language

      t.timestamps
    end
    add_index :bios, :language_id
  end
end
