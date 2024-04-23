cask "kensington-trackball-works" do
  version "3.1.10"
  sha256 :no_check # use ':no_check' if you trust the source or calculate the sha256 of the pkg file

  url "https://www.kensington.com/siteassets/software-support/kensingtonworks/2024-update/kensingtonworks_3.1.10_1706808646.pkg"
  name "Kensington Trackball Works"
  desc "Software driver for Kensington Trackball"
  homepage "https://www.kensington.com/software/kensingtonworks-customization-software/"

  pkg "kensingtonworks_3.1.10_1706808646.pkg"

  uninstall pkgutil: "com.kensington.trackballworks.pkg"

  zap trash: [
    "~/Library/Application Support/Kensington",
    "~/Library/Preferences/com.kensington.trackballworks.plist",
  ]
end
