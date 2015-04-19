class AddMasterIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :master_id, :integer
    add_column :activities, :master_type, :string
 
  end
end
