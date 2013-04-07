class CreateThumbs < ActiveRecord::Migration
  def change
    create_table :thumbs do |t|
      t.string :picture
      t.references :job

      t.timestamps
    end
    add_index :thumbs, :job_id
  end
end
