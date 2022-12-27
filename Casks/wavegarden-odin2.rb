cask "wavegarden-odin2" do
  version "2.3.4"
  sha256 "eb3ae90660467cf9ba1d61313ce98764bc0f2dd02001a80c6cef4da05636f40c"

  url "https://www.thewavewarden.com/assets/Odin2MacInstaller.pkg"
  name "Odin 2"
  homepage "https://www.thewavewarden.com/odin2"

  pkg "Odin2MacInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "com.thewavewarden.pkg.odin2AU",
    "com.thewavewarden.pkg.odin2VST",
  ]
end
