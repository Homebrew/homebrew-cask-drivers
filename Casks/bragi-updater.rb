cask 'bragi-updater' do
  version '1.1.3'
  sha256 'f3b082989cf1c178a66287f801933c2248f8c9d048e7654bc35081d42e28aeaa'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast 'http://update.bragi.com/',
          checkpoint: '24f625040921beb60b80bb6ddd04f41ca72a13c2cb7f6bd236dddc2d1e4426f6'
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
