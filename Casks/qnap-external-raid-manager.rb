cask 'qnap-external-raid-manager' do
  version '1.2.5.0514'
  sha256 'e39acc998a1cc1be1cd3b4ecc53a6a85f09543c7f2c9f983a62fb03874299f1c'

  url "https://download.qnap.com/Storage/Utility/QNAPExternalRAIDManagerMac-#{version}.dmg"
  name 'QNAP External Raid Manager'
  homepage 'https://www.qnap.com/en/utilities/essentials'

  depends_on macos: '>= :high_sierra'

  pkg 'QNAP External RAID Manager.pkg'

  uninstall quit:    'com.qnap.raidmanager',
            pkgutil: 'com.qnap.raidmanager',
            delete:  '/Library/Application Support/QNAP/QNAP External RAID Manager',
            rmdir:   '/Library/Application Support/QNAP'
end
