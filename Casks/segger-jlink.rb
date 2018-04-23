cask 'segger-jlink' do
  version '6.32'
  sha256 'fc9dc7b4664304117127736f02c30f112b4b0792a1a3eb9a534ad47aea5c1f0b'

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
