class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|

      t.timestamps null: false
    end

    add_index :activities, :master_id
  end
end
