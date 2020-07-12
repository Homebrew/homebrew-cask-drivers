cask 'flashforge-flashprint' do
  version '4.3.1,34c1b1fed28d05ff7090df40ff149107'
  sha256 '7cae3e8bdae9e9370ef86603d79f761a9a2272db81935cc2a75ba67670e954ff'

  url "https://en.fss.flashforge.com/10000/software/#{version.after_comma}.zip"
  name 'FlashPrint'
  homepage 'https://www.flashforge.com/software/detail/Flashprint?id=40'

  auto_updates true

  pkg 'FlashPrint.pkg'

  uninstall pkgutil: 'com.sz3dp.pkg.FlashPrint'

  zap trash: '~/Library/Preferences/FlashForge.FlashPrint.plist'
end
