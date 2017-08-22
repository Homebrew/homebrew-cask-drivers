cask 'squeezeplay' do
  version '7.8.0r984'
  sha256 'a92808906a708169bc1d9107329cfb7d95ba1f00502a807e03e056b8f50bdfac'

  # URL_SECTION was verified as official when first introduced to the cask
  url "https://sourceforge.net/projects/lmsclients/files/squeezeplay/osx/SqueezePlay-#{version}.dmg"
  name 'Logitech LMS SqueezePlay Client'
  homepage 'http://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX'

  app 'SqueezePlay.app'
end
