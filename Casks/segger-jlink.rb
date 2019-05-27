cask 'segger-jlink' do
  version '6.46a'
  sha256 '562b0a8aa79fd67b043c1e188abe87c38d4429ee6196e517769e92ba96c3cd00'

  url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}.pkg",
      using: :post,
      data:  {
               'accept_license_agreement' => 'accepted',
               'non_emb_ctr'              => 'confirmed',
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
