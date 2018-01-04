cask 'segger-jlink' do
  version '6.22d'
  sha256 '5449d51e7c84a17ce768c00a4788f7a9c9f902c37853e6923e3820fded409cd4'

  url "https://www.segger.com/downloads/flasher/JLink_MacOSX_V#{version.no_dots}.pkg",
      using: :post,
      data:  {
               'accept_license_agreement' => 'accepted',
             }
  name 'Segger J-Link Command Line Tools'
  homepage 'https://www.segger.com/downloads/flasher'

  pkg "JLink_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.JLink'
end
