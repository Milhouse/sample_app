class AddUserIdToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :user_id, :integer
  end
end
