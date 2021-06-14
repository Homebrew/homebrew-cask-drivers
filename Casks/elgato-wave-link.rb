cask "elgato-wave-link" do
  version "1.2.1.2612,1.2.1"
  sha256 "23bd542313fdfc4b73d422a21bde0d2e012372aee34ba485bffea6faf0b2c420"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.after_comma}/WaveLink_#{version.before_comma}.pkg"
  name "Elgato Wave Link"
  desc "Intuitive software custom-built for content creation"
  homepage "https://www.elgato.com/en/wave-1"

  livecheck do
    url "https://help.elgato.com/hc/en-us/articles/360043289491-Elgato-Wave-Link-Release-Notes"
    strategy :page_match do |page|
      page.split(/class=['"]?toggle-content['"]?/).map do |toggle_content|
        match = toggle_content.match(
          %r{href=.*?/(\d+(?:\.\d+)*)/WaveLink_(\d+(?:\.\d+)*)\.pkg}mi,
        )
        "#{match[2]},#{match[1]}" if match
      end.compact
    end
  end

  depends_on macos: ">= :sierra"

  pkg "WaveLink_#{version.before_comma}.pkg"

  uninstall launchctl: "com.elgato.WaveLink",
            quit:      "com.elgato.WaveLink",
            pkgutil:   "com.elgato.pkg.WaveLink"

  zap trash: [
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
