cask 'handelsbanken-card-reader' do
  version '1.0.0.7'
  sha256 '119394abf75fb85a08ba7c0c96272e61584b8a1666ce08fd64380a583622e569'

  url 'https://www.handelsbanken.se/shb/inet/icentsv.nsf/vlookuppics/installation_handelsbanken_card_reader_mac_el_capitan/$file/shb_elcapitan.pkg'
  name 'Handelsbanken Card Reader'
  homepage 'https://www.handelsbanken.se/sv/privat/digitala-tjanster/installera-bankid'

  pkg 'shb_elcapitan.pkg'

  uninstall pkgutil: "com.gemalto.handelsbanken#{version.no_dots}.shbecr.pkg"

  caveats do
    reboot
  end
end
