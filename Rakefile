# # #
# Get gemspec info

gemspec_file = Dir["*.gemspec"].first
gemspec = eval File.read(gemspec_file), binding, gemspec_file
info = "#{gemspec.name} | #{gemspec.version} | " \
       "#{gemspec.runtime_dependencies.size} dependencies | " \
       "#{gemspec.files.size} files"

# # #
# Gem build and install task

desc info
task :gem do
  puts info + "\n\n"
  print "  "; sh "gem build #{gemspec_file}"
  FileUtils.mkdir_p "pkg"
  FileUtils.mv "#{gemspec.name}-#{gemspec.version}.gem", "pkg"
  puts; sh %{gem install --no-document pkg/#{gemspec.name}-#{gemspec.version}.gem}
end

# # #
# Build tasks

require 'middleman-gh-pages'

desc 'Deploy to relaxed.ruby.style'
task :deploy do
  sh 'git checkout website && rake publish && git checkout gh-pages && git pull origin gh-pages && git push production gh-pages:gh-pages && git checkout website'
end
