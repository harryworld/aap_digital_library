class AddIssueToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :issue_id, :integer
    add_column :articles, :session_id, :integer
    add_column :articles, :author_id, :integer
  end
end
