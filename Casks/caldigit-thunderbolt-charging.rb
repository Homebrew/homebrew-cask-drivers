cask 'caldigit-thunderbolt-charging' do
  version :latest
  sha256 :no_check

  url 'https://downloads.caldigit.com/CalDigit-Thunderbolt-Station-Mac-Drivers.zip'
  name 'CalDigit Thunderbolt Station USB Charging & SuperDrive Support Driver'
  homepage 'https://www.caldigit.com/'

  pkg 'CalDigit Thunderbolt Station Charging Support.pkg'

  uninstall kext:    [
                       'com.CalDigit.ThunderboltStationChargingSupport',
                       'com.CalDigit.driver.HDPro',
                     ],
            pkgutil: 'com.CalDigit.CalDigitThunderboltStationChargingSupport.caldigitThunderboltStationsChargingSupport.CalDigitThunderboltStationChargingSupport.pkg',
            delete:  [
                       '/Library/Extensions/CalDigitHDProDrv.kext',
                       '/Library/Extensions/CalDigitThunderboltStationChargingSupport.kext',
                     ]

  caveats do
    reboot
  end
end
