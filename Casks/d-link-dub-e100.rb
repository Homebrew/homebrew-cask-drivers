cask 'd-link-dub-e100' do
  version '2.4.1'
  sha256 '7a630f4b811415d0f236e23ccaca03ddba06c5c712d37d0f8a5c9e66a0bd58f6'

  url "ftp://ftp2.dlink.com/PRODUCTS/DUB-E100/REVD/DUB-E100_REVD_macOS_DRIVER_INSTALLER_v#{version}.zip"
  name 'D-Link DUB-E100 Driver'
  homepage 'http://www.dlink.com/uk/en/products/dub-e100-high-speed-usb-2-fast-ethernet-adapter'

  container nested: "DUB-E100_Macintosh_10.5_to_10.12_Driver_Installer_v#{version}_20161005/DUB-E100.dmg"

  pkg "DUB-E100_v#{version}.pkg"

  uninstall script:  {
                       executable: 'DUB-E100_Uninstall_v130',
                       sudo:       true,
                     },
            pkgutil: 'com.dlink.pkg.DUB-E100*'

  caveats do
    kext
    reboot
  end
end
