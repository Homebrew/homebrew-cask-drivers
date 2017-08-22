cask 'squeezeplay' do
  version '7.8.0r984'
  sha256 'a92808906a708169bc1d9107329cfb7d95ba1f00502a807e03e056b8f50bdfac'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx',
          checkpoint: '9de25ee8d7e6cfd6ccb9b83de2b2796c776d36eb88d825fb973c62a44b86aac7'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'http://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
