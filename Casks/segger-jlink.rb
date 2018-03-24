cask 'segger-jlink' do
  version '6.30i'
  sha256 'ccfbaf599bb4dd3c71bc91f1d858b86c7c7c91256c460bee02f52b42f27f68ce'

  url "https://www.segger.com/downloads/flasher/JLink_MacOSX_V#{version.no_dots}.pkg",
      using: :post,
      data:  {
               'accept_license_agreement' => 'accepted',
             }
  name 'Segger J-Link Command Line Tools'
  homepage 'https://www.segger.com/downloads/flasher'

  pkg "JLink_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.JLink'

  caveats <<~EOS
    Installing this Cask means you have AGREED to the
    Segger Downloads License agreement available at

      #{url}
  EOS
end
