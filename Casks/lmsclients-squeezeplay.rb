cask 'lmsclients-squeezeplay' do
  version '7.8.0r1227'
  sha256 '2802555f092a616d1843e5812abb052d4d5ef8cb918657bf3867bd86ff5c654c'

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
