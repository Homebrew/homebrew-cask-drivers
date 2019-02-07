cask 'segger-jlink' do
  version '6.42b'
  sha256 '072267c12900bfb76ee6dec5e6895ddfda4af9909ff5fd4658bec30c0ca77c49'

  url "https://www.segger.com/downloads/flasher/JLink_MacOSX_V#{version.no_dots}.pkg",
      using: :post,
      data:  {
               'accept_license_agreement' => 'accepted',
             }
  name 'Segger J-Link Command Line Tools'
  homepage 'https://www.segger.com/downloads/flasher'

  pkg "JLink_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.JLink'

  caveats do
    license @cask.url.to_s
  end
end
