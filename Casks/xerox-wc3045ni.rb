cask 'xerox-wc3045ni' do
  version '1.008'
  sha256 'c5f2e084c855a8f5f4641f593817a6ae79ce3cc10e54b0302a2986d508ef6621'

  url 'http://download.support.xerox.com/pub/drivers/WC3045/drivers/macos1012/pt_BR/xrwc3045ni1009m107ml.dmg'
  name 'Xerox WC3045NI'
  homepage 'https://www.support.xerox.com/support/workcentre-3045/downloads/enus.html?operatingSystem=macosx'

  pkg 'Xerox WorkCentre 3045NI installer.pkg'

  uninstall pkgutil: [
                       'com.Xerox.xeroxWorkcentre3045Ni.1010PDEs3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.1010PPDs3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.1010filter3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.105LaunchAgents3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.106TWAIN3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.Applicationsfor3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.ICA3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.Printers3045NI.pkg',
                       'com.Xerox.xeroxWorkcentre3045Ni.postflight.pkg',
                     ]
end
