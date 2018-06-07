print "register myplugin"
module RunNodeBefore
  def self.process(site, payload)
    print "register myplugin"
    return if @processed
    system "node build_index.js"
    @processed = true
  end
end

Jekyll::Hooks.register :site, :pre_render do |site, payload|
  print "Categories", site.categories.keys
end
