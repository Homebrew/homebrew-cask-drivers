cask 'segger-jlink' do
  version '6.32c'
  sha256 'beb257f250639e86d35c992169f474247bc77b4e7601df6fff1fef10d4734799'

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
    license "#{@cask.url}"
  end
end
