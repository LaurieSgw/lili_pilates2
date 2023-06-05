class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :phone_number, :integer
    add_column :users, :level, :string
    add_column :users, :health_record, :string
  end
end
