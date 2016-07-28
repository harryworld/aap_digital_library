class AddTitleColorToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :title_color_id, :integer
  end
end
