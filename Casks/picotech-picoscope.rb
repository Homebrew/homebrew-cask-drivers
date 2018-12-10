cask 'picotech-picoscope' do
  version '6.13.7-4r706'
  sha256 'acda1f403a3f441fb61f907a49bc508c843bf918b124da99792edcc38a0bbe7d'

  url "https://www.picotech.com/download/software/beta/PicoScope-#{version}.pkg"
  name 'PicoScope'
  homepage 'https://www.picotech.com/'

  depends_on cask: 'mono-mdk'

  pkg "PicoScope-#{version}.pkg"

  uninstall pkgutil: 'com.picotech.*'
end
