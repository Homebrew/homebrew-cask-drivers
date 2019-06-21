cask 'lmsclients-squeezeplay' do
  version '7.8.0r1163'
  sha256 '81bdde79c67d6aea9e25be6d0021259a2a1f0a4a4bb3aa4ddae249d7ccc60eb3'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'https://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'

  uninstall quit: 'com.logitech.squeezeplay'

  zap trash: [
               '~/Library/Preferences/SqueezePlay',
               '~/Library/Saved Application State/com.logitech.squeezeplay.savedState',
             ]
end
