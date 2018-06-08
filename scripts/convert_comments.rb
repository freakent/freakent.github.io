require 'jekyll'
require 'fileutils'
require 'time'
require 'digest'


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

    puts post.data["date"], post.data["slug"]

    post.data["comments"].each do |comment|
      #puts comment["author_url"]
      if /^http.*:\/\/(www|blog).freakent.co.uk\/.*$/.match(comment["author_url"]) == nil
        puts "Processing #{comment["author"]} #{comment["author_url"]}"
        date = Time.parse(comment["date"])
        email_digest = Digest::MD5.hexdigest comment["author_email"].downcase
        data = {
          '_id' => comment["id"],
          'replying_to' => "",
          'name' => comment["author"],
          "email" => email_digest,
          "url" => comment["author_url"],
          "message" => comment["content"],
          "date" => date.to_i, # 1528358018
          "date_rfc2822" => date.rfc2822(),
          #timestamp: 1528358018
          #        tags: []
          "type" => "comment",
          "layout" => "post"
        }

        #puts data.inspect
        #puts "   "
        puts "*** #{post.id} #{Jekyll::Utils.slugify(post.id)} ***"
        date_dmy = post.data["date"].strftime("%Y-%m-%d")
        path = "_data/comments/#{Jekyll::Utils.slugify(post.id)}"
        file_name = "comment-#{date.to_i}-#{comment["author"]}.yml"
        FileUtils::mkdir_p path unless File.directory? path
        File.open(path + '/' + file_name, 'w') {|f| f.write data.to_yaml }
      else
        puts "ignoring #{comment["author"]} #{comment["author_url"]}"
      end

    end
    puts "   "
  end

end
