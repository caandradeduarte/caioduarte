class AlterIsShownToShowInJob < ActiveRecord::Migration
  def change
  	rename_column :jobs, :isShown, :show
  end
end
