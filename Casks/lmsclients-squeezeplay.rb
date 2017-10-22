cask 'lmsclients-squeezeplay' do
  version '7.8.0r984'
  sha256 'a92808906a708169bc1d9107329cfb7d95ba1f00502a807e03e056b8f50bdfac'

  # downloads.sourceforge.net/lmsclients was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx',
          checkpoint: '40e3dbf7f953949f6286347fd1caa25fa181079340b8aac312f87f483a45f990'
  name 'Logitech LMS SqueezePlay Client'
  homepage 'http://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
