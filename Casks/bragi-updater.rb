cask 'bragi-updater' do
  version '1.1.2'
  sha256 '4d3834015c135f82f20ae80fd21c31e8ee645a6b57d01b0cd985e41c9c42dee6'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast 'http://update.bragi.com/',
          checkpoint: '0c70c4f6a5ff8af67f9254cfcabcaf83eeae4ef21f14d6cb10c14140545fb867'
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
