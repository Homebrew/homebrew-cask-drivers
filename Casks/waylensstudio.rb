cask 'waylensstudio' do
  version '1.4.5,1538987134629'
  sha256 '77f9942de3bb0d3c952f6b0776831bf8f7f016207751a40536e24188dd6498d3'

  # d3dxhfn6er5hd4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3dxhfn6er5hd4.cloudfront.net/software/pc_app/WaylensStudio_for_osx_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://www.waylens.com/download/horizon',
          configuration: version.before_comma
  name 'Waylens Studio'
  homepage 'https://www.waylens.com/horizon/'

  app 'WaylensStudio.app'

  uninstall quit: 'Vidit.WaylensStudio'

  zap trash: [
               '~/.config/Waylens',
               '~/Library/Application Support/Waylens/WaylensStudio',
               '~/Library/Preferences/Vidit.WaylensStudio.plist',
               '~/Library/Preferences/com.waylens.WaylensUploader.plist',
               '~/Library/Preferences/com.waylens.www.WaylensStudio.plist',
               '~/Library/Saved Application State/Vidit.WaylensStudio.savedState',
             ],
      rmdir: '~/Library/Application Support/Waylens'
end
