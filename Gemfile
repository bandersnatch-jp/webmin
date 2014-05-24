source 'https://rubygems.org'

gem 'chef','~>11.10.0'
gem 'berkshelf','~>2.0.0'
gem 'foodcritic'
gem 'rubocop'

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.5.2"
# end
#
# group :plugins do
#   gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
#   gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
# end


group :development do
  gem "vagrant",
  git: "https://github.com/mitchellh/vagrant.git", tag:"v1.5.4"
end

group :plugins do
  gem "vagrant-omnibus"
  gem "vagrant-vbguest"
  gem "vagrant-hostsupdater"
end


group :integration do
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
  gem 'busser'
  gem 'thor'
  gem 'serverspec'
end
