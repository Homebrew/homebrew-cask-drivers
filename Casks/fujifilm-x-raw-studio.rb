cask 'fujifilm-x-raw-studio' do
  version '1.10.0,yx6qx3w0'
  sha256 'eebc03974e47ee4c0c341e085e311a2f45c8b7052635bdb24416d54673082b73'

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
