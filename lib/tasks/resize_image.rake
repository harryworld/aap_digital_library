namespace :resize do
  task :cover_image => :environment do
    Issue.find_each do |issue|
      issue.cover_image.recreate_versions!
    end
  end
  task :article_image => :environment do
    Image.find_each do |image|
      image.file.recreate_versions!
    end
  end
end