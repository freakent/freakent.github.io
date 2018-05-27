gem install jekyll-import

gem install unidecode sequel mysql2 htmlentities

ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordPress.run({
      "dbname"   => "wordpress_db",
      "user"     => "root",
      "password" => "W1ndsurf!DO",
      "host"     => "www.freakent.co.uk",
      "port"     => "3306",
      "socket"   => "",
      "table_prefix"   => "wpa",
      "site_prefix"    => "",
      "clean_entities" => true,
      "comments"       => true,
      "categories"     => true,
      "tags"           => true,
      "more_excerpt"   => true,
      "more_anchor"    => true,
      "extension"      => "html",
      "status"         => ["publish", "draft", "private", "revision"]
    })'
