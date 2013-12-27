class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :activity_id
      t.integer :goal_type, default: Goal::Type::DISTANCE
      t.float   :goal_value
      t.integer :occurances
      t.date    :start_date
      t.date    :end_date

      t.timestamps
    end
  end
end
