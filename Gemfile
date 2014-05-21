source 'https://rubygems.org'

gem 'chef','~>11.10.0'
gem 'knife-solo'
gem 'berkshelf','~>2.0.0'
gem 'test-kitchen'
gem 'kitchen-vagrant'

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
    git: "https://github.com/mitchellh/vagrant.git"
end

group :plugins do
  gem "vagrant-omnibus"
  gem "vagrant-vbguest"
end
