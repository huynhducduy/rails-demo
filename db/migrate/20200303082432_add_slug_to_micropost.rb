class AddSlugToMicropost < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :slug, :string
    add_index :microposts, :slug, unique: true
  end
end
