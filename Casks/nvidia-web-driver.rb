cask 'nvidia-web-driver' do
  if MacOS.version <= :sierra
    version '378.05.05.25f01'
    sha256 '79b831457e0ba0b7f99ee69f49f1abcd106446713bfa2ffc09e4058b4dec501d'
  else
    version '378.10.10.10.20.107'
    sha256 '85f949ba4137ed160f2e15ebb318ba22e83ccc99b3aedee319867d797f2aeaeb'
  end

  url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version}/WebDriver-#{version}.pkg"
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
