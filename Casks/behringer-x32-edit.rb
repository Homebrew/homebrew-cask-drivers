cask "behringer-x32-edit" do
  # NOTE: "32" is not a version number, but an intrinsic part of the product name
  version "4.3"
  sha256 "ed200bdd08a7fbbf8146f18f4bc95011a814d7a283f04a36040b11e4445da13b"

  url "https://mediadl.musictribe.com/download/software/behringer/X32/X32-Edit_MAC_#{version}.zip",
      verified: "mediadl.musictribe.com/download/software/behringer/"
  name "Behringer X32-Edit"
  desc "Edit Behringer Digital Mixers via LAN/Wi-Fi"
  homepage "https://www.behringer.com/Categories/Behringer/Mixers/Digital/X32/p/P0ASF/"

  livecheck do
    url "https://www.behringer.com/.rest/musictribe/v1/products/media-library?brandName=behringer&modelCode=P0ASF"
    regex(%r{/X32[._-]?Edit[._-]?MAC[._-]?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "X32-Edit_#{version}/X32-Edit.app"

  uninstall quit:   "com.music-group.X32-Edit",
            delete: "/Library/Logs/DiagnosticReports/X32-Edit_*.wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/CrashReporter/X32-Edit_*.plist",
    "~/Library/Saved Application State/com.music-group.X32-Edit.savedState",
    "~/Library/.X32-Edit",
  ]
end
