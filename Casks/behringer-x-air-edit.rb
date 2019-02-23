cask 'behringer-x-air-edit' do
  version '1.5'
  sha256 '4db3fb2204829384f59aae00b19f49e14f0151c9eb113776f0d455350868751b'

  url "https://downloads.music-group.com/software/behringer/XAIR/X-AIR-Edit_MAC_V#{version}.zip"
  name 'Behringer X Air Edit'
  homepage 'https://www.music-group.com/brand/c/Behringer/downloads?active=Downloads'

  app 'X-AIR-Edit.app'

  uninstall quit:   'com.music-group.X-AIR-Edit',
            delete: '/Library/Logs/DiagnosticReports/X-AIR-Edit_*.wakeups_resource.diag'

  zap trash: [
               '~/Library/.X-AIR-Edit',
               '~/Library/Application Support/CrashReporter/X-AIR-Edit_*.plist',
               '~/Library/Saved Application State/com.music-group.X-AIR-Edit.savedState',
             ]
end
