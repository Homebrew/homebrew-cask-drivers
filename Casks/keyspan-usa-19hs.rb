cask 'keyspan-usa-19hs' do
  version '4'
  sha256 '9a07a07d10c3cee5ea1cf3e67b091c30b26a7e24959602b258ae8060a7bf6ce3'

  url "https://assets.tripplite.com/drivers/usa-19hs-driver-v#{version}-mac-os-x-10.9-10.11.zip"
  name 'Keyspan USA-19HS High-Speed USB-to-Serial Adapter Driver'
  homepage 'https://www.tripplite.com/keyspan-high-speed-usb-to-serial-adapter~USA19HS/'

  depends_on macos: '>= :mavericks'

  pkg "USA-19HSdrvr_10.9_10.10_10.11_v#{version}_signed.pkg"

  uninstall kext:    'com.keyspan.iokit.usb.KeyspanUSAdriver',
            pkgutil: [
                       'com.keyspan.iokit.keyspanusadrvr',
                       'com.keyspan.iokit.usb.KeyspanUSAdriver',
                     ]
end
