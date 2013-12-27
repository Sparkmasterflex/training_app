class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer  :user_id
      t.string   :accomplished
      t.integer  :time
      t.date     :accomplished_at

      t.timestamps
    end
  end
end
