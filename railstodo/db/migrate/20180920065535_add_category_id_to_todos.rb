class AddCategoryIdToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :category_id, :integer
  end
end
