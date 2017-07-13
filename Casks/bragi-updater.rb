cask 'bragi-updater' do
  version '1.1.0'
  sha256 '305fd036fae31b765455c8dab9176f12b8f98a526d45ead0bb9edc41a2940c86'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast 'http://update.bragi.com/',
          checkpoint: '21eaf7775f39fcfe8ea03a60fd9032805829cb15b13a3bb9de96ae44da156e73'
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
