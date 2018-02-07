cask 'segger-jlink' do
  version '6.30b'
  sha256 'b09c8e986523038285a791467c237696bc977d85c0248b36c2b21e34288cca6c'

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
