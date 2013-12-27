class AddEventIdUsers < ActiveRecord::Migration
  def change
    add_column :users, :event_id, :integer, after: :id
  end
end
