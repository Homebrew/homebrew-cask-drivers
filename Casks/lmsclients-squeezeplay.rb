cask 'lmsclients-squeezeplay' do
  version '7.8.0r1072'
  sha256 'daecd41fad9d6edbbab9bde6fbc5ddef0fbb80909b99a13def8b1f233c003ff6'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx',
          checkpoint: 'fa360234322c4439d2a6420788694b33a910ba3f533a46256ca0776d0a282f00'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'http://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
