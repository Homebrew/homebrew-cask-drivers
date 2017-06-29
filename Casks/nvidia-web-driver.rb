cask 'nvidia-web-driver' do
  version '378.05.05.15f01'
  sha256 '358688df3a9643c7aa4baac402716c6411eeed6092359dd0ac989044c9e601f0'

  url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version}/WebDriver-#{version}.pkg"
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/download/driverResults.aspx/107369/en-us'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
