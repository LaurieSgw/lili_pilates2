class ChangeTypeToSubType < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscriptions, :type, :sub_type
  end
end
