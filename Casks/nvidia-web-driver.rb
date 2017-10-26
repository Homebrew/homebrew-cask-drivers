cask 'nvidia-web-driver' do
  if MacOS.version <= :sierra
    version '378.05.05.25f01'
    sha256 '79b831457e0ba0b7f99ee69f49f1abcd106446713bfa2ffc09e4058b4dec501d'
  else
    version '378.10.10.10.15.120'
    sha256 '9cc83151eb29208e8a56f6b908bd23835522a1b38a51158a2b91f361bd217c0b'
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
