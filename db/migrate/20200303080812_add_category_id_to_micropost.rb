class AddCategoryIdToMicropost < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :category_id, :number
  end
end
