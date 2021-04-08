cask "asix-ax88179" do
  version "2.19.0,1109"
  sha256 :no_check

  url "https://www.asix.com.tw/en/support/download/file/#{version.after_comma}"
  name "AX88179"
  desc "USB 3.0 to gigabit ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/en/support/download"

  livecheck do
    url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
    strategy :page_match do |page|
      page.split(/class=['"]?list__item['"]?/).map do |list_item|
        match = list_item.match(
          %r{data-href=.*?/download/file/(\d+).*?macOS.*?Vision\s*?(?:<br>)?\s*?(\d+(?:\.\d+)*)<}mi,
        )
        "#{match[2]},#{match[1]}" if match
      end.compact
    end
  end

  container nested: "AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version.before_comma}/AX88179_178A_v#{version.before_comma}.dmg"

  installer manual: "AX88179_178A_v#{version.before_comma}.app"

  uninstall_preflight do
    staged_path.glob("AX88179_178A_Uninstall_v*.pkg").first.rename(staged_path/"AX88179_178A_Uninstall.pkg")

    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", staged_path/"AX88179_178A_Uninstall.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall pkgutil: "com.asix.ax88179.uninstall"

  caveats do
    reboot
  end
end
