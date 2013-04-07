class CreateJobDescriptions < ActiveRecord::Migration
  def change
    create_table :job_descriptions do |t|
      t.string :title
      t.text :description
      t.references :language
      t.references :job

      t.timestamps
    end
    add_index :job_descriptions, :language_id
    add_index :job_descriptions, :job_id
  end
end
