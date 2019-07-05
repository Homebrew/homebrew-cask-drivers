cask 'segger-jlink' do
  version '6.46i'
  sha256 'ad01e705c5b843e1577fa1f4cd87ee146e171b083ccf9d1e5b3a4c2b736ab1b0'

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

  uninstall quit:    [
                       'com.segger.JFlashLite.*',
                       'com.segger.JLinkGDBServer.*',
                       'com.segger.JLinkLicenseManager.*',
                       'com.segger.JLinkRegistration.*',
                       'com.segger.JLinkRemoteServer.*',
                       'com.segger.JLinkRTTViewer.*',
                     ],
            pkgutil: 'com.segger.pkg.JLink'

  zap trash: [
               '~/.SEGGER',
               '~/Library/Application Support/SEGGER',
               '~/Library/Saved Application State/com.segger.JFlashLite.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkGDBServer.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkLicenseManager.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkRTTViewer.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkRegistration.*savedState',
               '~/Library/Saved Application State/com.segger.JLinkRemoteServer.*savedState',
             ]

  caveats do
    license @cask.url.to_s
  end
end
