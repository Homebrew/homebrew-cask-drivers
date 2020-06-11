cask 'cardo-update' do
  version '2.1'
  sha256 '2dda68b7b8820b217fde5eda288344430f51d07510dd30432c3f283bba5a8f99'

  url 'https://update.cardosystems.com/cardo-app/cardo_updater_macOS_latest.pkg'
  name 'Cardo Update - firmware update tool for PACKTALK and FREECOM unit lines'
  homepage 'https://www.cardosystems.com/update'

  pkg 'cardo_updater_macOS_latest.pkg'

  uninstall quit:    'com.cardo.fwupdater',
            pkgutil: 'com.cardo.fwupdater'

  zap rmdir: [
               '~/Library/Application Support/Cardo Update',
             ]
end
