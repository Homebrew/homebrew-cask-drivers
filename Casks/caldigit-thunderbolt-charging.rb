cask 'caldigit-thunderbolt-charging' do
  version :latest
  sha256 :no_check

  url 'http://www.caldigit.com/Support/TS3/CalDigit-Thunderbolt-Station-Charging-Support.zip'
  name 'CalDigit Thunderbolt Station USB Charging & SuperDrive Support Driver'
  homepage 'http://www.caldigit.com/support.asp'

  pkg 'CalDigit Thunderbolt Station Charging Support.pkg'

  uninstall pkgutil: 'com.CalDigit.CalDigitThunderboltStationChargingSupport.caldigitThunderbolStationsChargingSupport.CalDigitThunderboltStationChargingSupport.pkg',
            kext:    'com.CalDigit.ThunderboltStationChargingSupport'

  caveats do
    reboot
  end
end
