cask 'bragi-updater' do
  version '1.1.1'
  sha256 '999f0698385e34bd85460cdbad8bbeaabde27ec91c5f53961d55547a5801060b'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast 'http://update.bragi.com/',
          checkpoint: '21eaf7775f39fcfe8ea03a60fd9032805829cb15b13a3bb9de96ae44da156e73'
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
