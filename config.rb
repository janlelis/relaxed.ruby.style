set :css_dir, 'stylesheets'
set :images_dir, 'images'

configure :build do
  activate :minify_css
end
