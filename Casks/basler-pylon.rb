cask 'basler-pylon' do
  version '5.0.5.8973'
  sha256 '4f17df1c89337a49cf423775823d5fd31101409bd5c8c42751b9ac92c16d921d'

  url "https://www.baslerweb.com/fp-1478427503/media/downloads/software/pylon_software/pylon-#{version}.dmg"
  name 'Basler Pylon Camera Software Suite'
  homepage 'https://www.baslerweb.com/'

  pkg "pylon-#{version}.pkg"

  uninstall pkgutil: 'com.baslerweb.pylon.*'

  caveats <<~EOS
    Installing this Cask means you have AGREED to the
    PYLON END-USER LICENSE AGREEMENT available at:

      https://www.baslerweb.com/en/service/pylon-eula/
  EOS
end
