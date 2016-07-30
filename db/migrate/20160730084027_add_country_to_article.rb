class AddCountryToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :country_id, :integer
  end
end
