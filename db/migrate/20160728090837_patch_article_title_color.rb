class PatchArticleTitleColor < ActiveRecord::Migration[5.0]
  def change
    TitleColor.create([
      { id: 1, name: "black", hex: "#000000"},
      { id: 2, name: "white", hex: "#FFFFFF"}  
    ])

    Article.update(title_color_id: 1)
  end
end
