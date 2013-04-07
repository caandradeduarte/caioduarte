class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.boolean :isShown

      t.timestamps
    end
  end
end
