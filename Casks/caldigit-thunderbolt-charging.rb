cask 'caldigit-thunderbolt-charging' do
  version :latest
  sha256 '81a8581e265754649f362aadd880d276ad5dd0233695e49121d9900a85d31d4c'

  url 'https://downloads.caldigit.com/CalDigit-Thunderbolt-Station-Mac-Drivers.zip'
  name 'CalDigit Thunderbolt Station USB Charging & SuperDrive Support Driver'
  homepage 'https://www.caldigit.com/'

  pkg 'CalDigit-Thunderbolt-Station-Mac-Drivers.pkg'

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
