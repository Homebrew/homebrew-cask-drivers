cask 'fujitsu-scansnap-manager-evernote' do
  version '1.0L40'
  sha256 'cb38e295c5386e4a20992b092c16a63f0ccdd0a839e391721494acc3ac4fe943'

  # origin.pfultd.com was verified as official when first introduced to the cask
  url "http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-evernote/ScanSnap%20Evernote%20EditionV#{version.no_dots}.pkg"
  name 'ScanSnap Manager Evernote Edition'
  homepage 'https://evernote.com/scansnap'

  pkg "ScanSnap Evernote EditionV#{version.no_dots}.pkg"

  uninstall pkgutil: "com.fujitsu.pfu.ScansnapEvernoteEditionV#{version.no_dots}"
end
