cask 'synologyassistant' do
  version '6.2-23733'
  sha256 '6b12b68e24c4db8e37e40807ec3eed94148c6047fa28c5cb53fa79c5da61d064'

  url "https://global.download.synology.com/download/Tools/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/Assistant/'
  name 'Synology Assistant'
  homepage 'https://www.synology.com/'

  app 'SynologyAssistant.app'

  zap trash: '~/Library/Preferences/com.synology.DSAssistant.plist'
end
