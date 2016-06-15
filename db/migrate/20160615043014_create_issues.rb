class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :number
      t.string :tagline
      t.string :cover_image

      t.timestamps
    end
  end
end
