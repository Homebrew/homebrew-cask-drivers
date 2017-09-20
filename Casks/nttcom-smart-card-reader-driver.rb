cask 'nttcom-smart-card-reader-driver' do
  version '111'
  sha256 'f4decf3e2fbd08c86d6a9e6bede29661caa95581625795f97f28cb8a7ba94137'

  url "http://www.ntt.com/content/dam/nttcom/hq/jp/business/services/application/authentication/jpki/etc/AcrMacDriver#{version}.dmg",
      user_agent: :fake
  name 'NTTCom Smart Card Reader Driver'
  homepage 'http://www.ntt.com/business/services/application/authentication/jpki.html'

  depends_on macos: '>= :yosemite'

  pkg 'NTTCom Smart Card Reader Driver.pkg'

  uninstall pkgutil: 'com.acs.acsccid'

  caveats do
    reboot
  end
end
