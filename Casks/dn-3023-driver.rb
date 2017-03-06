cask 'dn-3023-driver' do
  version '20161024'
  sha256 '91dc9e76f4808d515c6c764be1d03dddf820b4050eba83a1e1d139541f5bf027'

  # assmann.com was verified as official when first introduced to the cask
  url "http://ftp.assmann.com/pub/DN-/DN-3023___4016032318385/DN-3023_driver_Driver%20MAC10.6-10.12_#{version}.zip"
  name 'USB driver for Gigabit Ethernet Adapter D-3023'
  homepage 'http://www.digitus.info/produkte/computer-zubehoer-und-komponenten/netzwerk/netzwerk-adapter/dn-3023/?PL=en'

  container type:   :zip,
            nested: 'AX88179_178A_Macintosh_10.6_to_10.12_Driver_Installer_v2.8.0_20160912/AX88179_178A.dmg'

  pkg 'AX88179_178A_v2.8.0.pkg'

  uninstall script: 'AX88179_178A_Uninstall_v140'
end
