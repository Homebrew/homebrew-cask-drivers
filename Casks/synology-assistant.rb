cask 'synology-assistant' do
  version '6.1-15030'
  sha256 '78bc5981227f124ae9bc8419d404f5fd6671928a1fb73318c30a2277570be738'

  url "https://global.download.synology.com/download/Tools/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  name 'Synology Assistant'
  homepage 'https://www.synology.com/'

  app 'Synology Assistant.app'

  zap delete: '~/Library/Preferences/com.synology.DSAssistant.plist'
end
