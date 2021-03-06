# Simplest stow example
stow_package 'foo' do
  name 'foo'
  version '1.0.0'
  creates 'foo/tmp.txt'
end

# Simplest destow example
stow_package 'foo' do
  action :destow
  name 'foo'
  version '1.0.0'
  creates 'foo/tmp.txt'
end
