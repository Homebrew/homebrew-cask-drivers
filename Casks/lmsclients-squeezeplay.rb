cask 'lmsclients-squeezeplay' do
  version '7.8.0r1149'
  sha256 '0228243841db135a4b2ce2e2a4aed297c3d6639f2aa51d04e723827613b45dab'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'https://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
