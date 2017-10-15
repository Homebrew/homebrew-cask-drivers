cask 'nvidia-web-driver' do
  if MacOS.version <= :sierra
    version '378.05.05.25f01'
    sha256 '79b831457e0ba0b7f99ee69f49f1abcd106446713bfa2ffc09e4058b4dec501d'
    url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version}/WebDriver-#{version}.pkg"
  else
    version '378.10.10.10.15.117'
    sha256 '79b831457e0ba0b7f99ee69f49f1abcd106446713bfa2ffc09e4058b4dec501d'
    url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version[0..14]}/WebDriver-#{version}.pkg"
  end

  name 'NVIDIA Web Driver'
  homepage 'http://www.nvidia.com/download/driverResults.aspx/125379/en-us'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
