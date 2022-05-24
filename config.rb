# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
activate :livereload
# activate :directory_indexes
# extensions
require 'lib/extensions/permalink.rb'
activate :permalink
activate :syntax
set :markdown_engine, :kramdown

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# github userpages deploy
# activate :deploy do |deploy|
# deploy.method = :git
# deploy.build_before = true
# deploy.branch   = "master"
# deploy.remote   = "git@github.com:username/username.github.io.git"
# end

activate :blog do |blog|
  blog.prefix = 'blog'
  blog.paginate = true
  blog.page_link = 'p{num}'
  blog.per_page = 10
end

import_path File.expand_path('bower_components', app.root)

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
# set article_layout file for blogging
page 'blog/*', layout: :article_layout

# github project pages deploy
activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true # default: false
end

configure :build do
  set :relative_links, true
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  # Relative assets needed to deploy to Github Pages
  activate :relative_assets
  # Name of the project where you working on
  set :site_url, '/kblog'
end

# Get  dynnamic pages, single art page 
ignore "/single_art.html"
data.gallery.each do |f|
  proxy "/#{f.title.parameterize}.html", "/single_art.html", locals: {sinle_art: f}
end

