class ChangeTypeToSubT < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscriptions, :sub_type, :sub_choice
  end
end
