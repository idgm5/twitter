class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :realname, :string
  end
end
