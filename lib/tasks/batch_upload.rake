namespace :articles do
  desc 'e.g. rake "articles:batch_upload[90, /Users/kaelilo/Documents/workspace/rails/aap_digital_library/db/issues/90]"'
  task :batch_upload, [:arg1, :arg2]  => :environment do |t, args|
    issue_no = args[:arg1]
    directory = args[:arg2]

    issue = Issue.find_by(number: issue_no)
    if issue
      puts "Issue #{issue_no} is found.  Uploading articles to issue #{issue_no}"
      count = 0
      files = Dir.glob("#{directory}/*.txt")
      files.each do |file|
        article = Article.create(issue_id: issue.id, category_id: 2)
        title = ""
        content = ""

        fin = File.open(file).read
        fin.gsub!(/\r\n?/, "\n")
        fin.gsub!(/\n\n?/, "\n")
        fin.each_line do |line|
          line.gsub!(/\n?/, "")
          title = line if title.blank?
          content += "<p>#{line}</p>\n"
        end

        article.title = title
        article.content = content
        if article.save
          puts "#{count += 1} articles are loaded."
        else
          puts "Failed to load file #{file}."
        end
      end
    else
      puts "Issue #{issue_no} is not found!"
    end
  end
end
