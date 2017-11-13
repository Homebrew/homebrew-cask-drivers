cask 'suunto-dm5' do
  version :latest
  sha256 :no_check

  url 'http://dm5.movescount.com/SuuntoDM5.dmg'
  name 'Suunto DM5'
  homepage 'http://dm5.movescount.com/'

  depends_on cask: 'mono-mdk'

  app 'SuuntoDM5.app'
end
