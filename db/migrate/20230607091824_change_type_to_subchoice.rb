class ChangeTypeToSubchoice < ActiveRecord::Migration[7.0]
  def change
    remove_column :subscriptions, :sub_choice, :string
    add_column :subscriptions, :sub_type, :integer
  end
end
