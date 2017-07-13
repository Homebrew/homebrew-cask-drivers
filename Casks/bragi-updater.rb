cask 'bragi-updater' do
  version '1.1.2'
  sha256 '7430e20897da336aba59849ce23e4815dfe24b05772106c47254e2269e7022a0'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast 'http://update.bragi.com/',
          checkpoint: '400f9e0c852450239d75eaf45445486a1e69cc4444cc8057d59167d5a5115648'
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
