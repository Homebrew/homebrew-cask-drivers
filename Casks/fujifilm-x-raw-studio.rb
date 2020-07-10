cask 'fujifilm-x-raw-studio' do
  version '1.10.1,gg7gh9hh'
  sha256 'bb4b83b11a696ac2736a72f34e71fe0715d34e9c939bb2f015a9efd2fef890e0'

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.before_comma.no_dots}-#{version.after_comma}/XRawStudio#{version.before_comma.no_dots}.dmg"
  appcast 'https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/'
  name 'FUJIFILM X RAW STUDIO'
  homepage 'https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/'

  depends_on macos: '>= :sierra'

  app 'FUJIFILM X RAW STUDIO.app'

  uninstall quit: 'com.fujifilm.denji.X-RAW-STUDIO'

  zap trash: [
               '~/Library/Application Support/com.fujifilm.denji',
               '~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist',
               '~/Library/Saved Application State/com.fujifilm.denji.X-RAW-STUDIO.savedState',
             ]
end
