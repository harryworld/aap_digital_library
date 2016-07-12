namespace :resize do
  task :cover_image => :environment do
    Issue.find_each do |issue|
      issue.cover_image.recreate_versions!
    end
  end
end