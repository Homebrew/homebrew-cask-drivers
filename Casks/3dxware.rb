cask "3dxware" do
  version "10-7-0_r3386"
  sha256 "bebd9c01c96bfb9411fd5b4ccd2bbba3b798cba001b0e200547d0e9c3dcbf893"

  url "https://download.3dconnexion.com/drivers/technical_support/3DxWareMac_v#{version}.dmg"
  name "3DxWare"
  desc "Driver for all 3Dconnexion products"
  homepage "https://3dconnexion.com/de/product/3dxware-10/"

  pkg "Install\ 3Dconnexion\ software.pkg"

  uninstall {
			        script: {
					              executable: "/Applications/3Dconnexion/Uninstall\ 3Dconnexion\ Driver.app/Contents/MacOS/Uninstall\ 3Dconnexion\ Driver"
				              }
              pkgutil:  [
                          "com.3dconnexion.viewer",
                          "com.3dconnexion.collage",
                          "com.3dconnexion.pairing",
                          "com.3dconnexion.3dxsketchup",
                          "com.3dconnexion.pluginpkg.installer",
                          "com.3dconnexion.Trainer",
                          "com.3dconnexion.3dxwaremacinfo.installer",
                          "com.3dconnexion.puzzle",
                          "com.3dconnexion.3dxmaya",
                          "com.3dconnexion.3dxnlserver",
                          "com.3dconnexion.3dxphotoshop.installer",
                          "com.3dconnexion.3dxmaccore.installer"
                        ]
            }
end
