cask 'nvidia-web-driver' do
  version '378.10.10.10.15.114'
  sha256 '02fafe29be21923ea9f647a9075171b37b2714a8f59cc28570b52311240e6ebb'

  url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version[0..14]}/WebDriver-#{version}.pkg"
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/download/driverResults.aspx/107369/en-us'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
