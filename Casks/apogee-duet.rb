cask 'apogee-duet' do
  version 'June_2015'
  sha256 '4269af249372df7a50006f91a7dc1d73dddce9a878a247f98bd0a46d5e2619ee'

  url "https://www.apogeedigital.com/drivers/Duet_#{version}.dmg"
  name 'Apogee Duet'
  homepage 'http://www.apogeedigital.com/support/software-downloads#tab-id-8'

  depends_on macos: '>= :mavericks'

  pkg 'Duet Software Installer.pkg'

  uninstall pkgutil: 'com.apogee.pkg.*'

  caveats do
    reboot
  end
end
