class CreateTitleColors < ActiveRecord::Migration[5.0]
  def change
    create_table :title_colors do |t|
      t.string :name
      t.string :hex

      t.timestamps
    end
  end
end
