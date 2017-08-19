cask 'bose-updater' do
  version '1.5.4.1309.6342'
  sha256 '027fa124ce45342cc925e584fc1d76cd3a8f7761e3a6db0191f82cff3e6b967a'

  url 'http://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_{version}.dmg'
  name 'Bose Updater'
  homepage 'http://btu.bose.com/'

  app 'Bose Updater.app'
end
