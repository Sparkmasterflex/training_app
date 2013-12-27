class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string   :title
      t.string   :sponsor
      t.text     :description
      t.string   :website
      t.string   :location
      t.datetime :starts_at

      t.timestamps
    end
  end
end
