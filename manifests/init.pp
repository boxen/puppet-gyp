# Public: Install gyp via homebrew
#
# Examples
#
#   include gyp
class gyp {
  include homebrew
  include scons

  homebrew::formula { 'gyp':
    before => Package['boxen/brews/gyp'],
  }

  package { 'boxen/brews/gyp':
    install_options => '--HEAD',
    require         => Package['boxen/brews/scons'],
  }
}
