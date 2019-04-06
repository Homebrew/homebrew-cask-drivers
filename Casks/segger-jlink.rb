cask 'segger-jlink' do
  version '6.44e'
  sha256 '7cf98f4ab2cf225f572800901838eaa0110042e6d638104fd527b4a203f5a7f6'

  url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}.pkg",
      using: :post,
      data:  {
               'accept_license_agreement' => 'accepted',
               'non_eu_denied_list'       => 'confirmed',
               'submit'                   => 'Download software',
             }
  name 'Segger J-Link Command Line Tools'
  homepage 'https://www.segger.com/downloads/jlink'

  pkg "JLink_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.JLink'

  caveats do
    license @cask.url.to_s
  end
end
