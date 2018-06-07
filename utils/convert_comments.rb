require 'jekyll'

conf = Jekyll.configuration({
  #'source'      => 'path/to/source',
  #'destination' => 'path/to/destination'
})

site = Jekyll::Site.new(conf)

puts "\nCollections"
site.collections['posts'].read
puts site.collections['posts'].docs.size

site.collections['posts'].docs.each do |post|
  if post.data["comments"] and post.data["comments"].size > 0
    puts post.data["title"], post.url, post.data["slug"]
    post.data["comments"].each do |comment|
      data = {
        '_id' => comment["id"],
        'replying_to' => "",
        'name' => comment["author"],
        "email" => comment["author_email"],
        "url" => comment["author_url"],
        "message" => comment["content"],
        "date" => comment["date"], # 1528358018
        #timestamp: 1528358018
#        tags: []
        "type" => "comment",
        "layout" => "post"
      }

      puts data.inspect
      puts "   "
      file_name = '_data/comments/' + post.data["slug"] + '/comment-' + comment["author"] + '-' + comment["id"] + '.yml'
      File.open(file_name, 'w') {|f| f.write data.to_yaml }

    end
    puts "   "
  end

end
