cask 'segger-jlink' do
  version '6.42e'
  sha256 '8d44866241b386e96019b48f6fb48b7c416e8dc0bf400ffbdce4fd992d93c312'

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
