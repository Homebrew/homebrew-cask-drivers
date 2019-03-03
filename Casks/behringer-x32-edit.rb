cask 'behringer-x32-edit' do
  # note: "32" is not a version number, but an intrinsic part of the product name
  version '3.2'
  sha256 '2dee264d0df054e4f9b689af99046b7b28f5b8519cf1fba8df103ca30edcdc0a'

  url "https://downloads.music-group.com/software/behringer/X32/X32-Edit_MAC_#{version}.zip"
  name 'Behringer X32-Edit'
  homepage 'https://www.musictribe.com/Categories/Behringer/Mixers/Digital/X32/p/P0ASF'

  app 'X32-Edit.app'

  uninstall quit:   'com.music-group.X32-Edit',
            delete: '/Library/Logs/DiagnosticReports/X32-Edit_*.wakeups_resource.diag'

  zap trash: [
               '~/Library/Application Support/CrashReporter/X32-Edit_*.plist',
               '~/Library/Saved Application State/com.music-group.X32-Edit.savedState',
             ]

  caveats do
    license 'https://www.musictribe.com/Categories/Behringer/Mixers/Digital/X32/p/P0ASF/downloads?active=Downloads'
  end
end
