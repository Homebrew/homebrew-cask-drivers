cask 'segger-jlink' do
  version '6.30j'
  sha256 '6f6fac3811bff5785a41be8399b142bde565235e5f6ac6c4257475ebcb3f2aef'

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
