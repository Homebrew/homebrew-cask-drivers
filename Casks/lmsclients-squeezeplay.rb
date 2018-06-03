cask 'lmsclients-squeezeplay' do
  version '7.8.0r1101'
  sha256 '85b7f4fdab8efd3200a96085e81acde60c98ac9e91369d85426ab3994c134891'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx',
          checkpoint: '51229f27fee5e62d838bac07c4bb8a8028b27780fb7406f17ab356c2805d6171'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'http://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
