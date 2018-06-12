cask 'segger-jlink' do
  version '6.32f'
  sha256 '8040165220179a97fa15c00328d80cefec5c2613fb10ad5dfb2512c5e3e3db13'

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
