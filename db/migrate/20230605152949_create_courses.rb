class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.datetime :date
      t.integer :available_places

      t.timestamps
    end
  end
end
