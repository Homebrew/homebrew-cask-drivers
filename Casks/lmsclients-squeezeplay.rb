cask 'lmsclients-squeezeplay' do
  version '7.8.0r1188'
  sha256 '767e7056336c8cd5e587212b98dbf78e5a75f8483ce2d54de1da36fc92aaebcf'

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
