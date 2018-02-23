cask 'segger-jlink' do
  version '6.30e'
  sha256 '6e167ca8072255ff2b75538b455754e64e33bb90259bdfea77ff648c8c61f44d'

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
