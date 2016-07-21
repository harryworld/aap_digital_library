namespace 'patch' do
  task :image_artcie_id => :environment do
    Article.find_each do |article|
      content = Nokogiri::HTML article.content
      img_srcs = content.css('img').map{ |i| i['src'] }
      img_srcs.each do |img_src|
        arr = img_src.split('/')
        if arr[-4] == "image" && arr[-3] == "file"
          image_id = arr[-2]
          image = Image.find(image_id)
          image.update(article_id: article.id) if image
        end
      end
    end
  end
end