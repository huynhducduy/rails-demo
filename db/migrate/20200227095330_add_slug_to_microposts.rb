class AddSlugToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :slug, :string
  end
end
