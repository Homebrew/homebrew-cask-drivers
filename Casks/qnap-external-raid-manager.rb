cask 'qnap-external-raid-manager' do
  version '1.2.3.1024'
  sha256 '0fa2212540cf0911098cce6c14ed17b93e7a251dce58abd19ec65c9aa6fd115d'

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
