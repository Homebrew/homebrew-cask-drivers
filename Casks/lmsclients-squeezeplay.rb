cask 'lmsclients-squeezeplay' do
  version '7.8.0r1034'
  sha256 'f79c47342f45058113d559baac83f3b01d770c8c8dda8c799428b62f70331a10'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx',
          checkpoint: '27606deaec7cda01be1809ec4e5bd13c997bcd177b1b98467ac400a71bdb978b'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'http://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
