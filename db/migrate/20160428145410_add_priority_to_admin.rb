class AddPriorityToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :priority, :integer, default: 1
  end
end
