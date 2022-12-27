cask "uhe-protoverb" do
  version "1.0.1,12092"
  sha256 "ef229da0935eba9f525c60acbb579d0d395e2135624257cb89c39111c82a0f8d"

  url "https://uhe-dl.b-cdn.net/releases/Protoverb_101_12092_Mac.zip"
  name "Protoverb"
  homepage "https://u-he.com/products/protoverb/"

  pkg "Protoverb_#{version.after_comma}_Mac/Protoverb #{version.before_comma} Installer.pkg"
  
  desc "A natural sounding reverb based on the concept of a room simulator."

  uninstall pkgutil: [
    "com.u-he.Protoverb.aax.pkg",
    "com.u-he.Protoverb.au.pkg",
    "com.u-he.Protoverb.data.pkg",
    "com.u-he.Protoverb.documentation.pkg",
    "com.u-he.Protoverb.presets.pkg",
    "com.u-he.Protoverb.vst.pkg",
  ]
end
