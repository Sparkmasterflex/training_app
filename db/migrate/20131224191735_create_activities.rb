class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :event_id
      t.string  :title
      t.string  :description

      t.timestamps
    end
  end
end
