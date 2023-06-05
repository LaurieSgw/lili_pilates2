class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :price
      t.string :type
      t.integer :courses_number

      t.timestamps
    end
  end
end
