cask 'nvidia-web-driver' do
  if MacOS.version <= :sierra
    version '378.05.05.25f01'
    sha256 '79b831457e0ba0b7f99ee69f49f1abcd106446713bfa2ffc09e4058b4dec501d'
  else
    version '378.10.10.10.15.121'
    sha256 'ddb6f92a3a69420b35409616dda3cf130f89397b946e9ace21128e17d79c3465'
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
