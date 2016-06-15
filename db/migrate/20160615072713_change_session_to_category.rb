class ChangeSessionToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :session_id, :category_id
  end
end
