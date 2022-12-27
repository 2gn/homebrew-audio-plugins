cask "vital" do
  pkg "VitalInstaller.pkg"
  version "1.0.7"
  sha256 "27be18ae05b334d29eb01ccfb3553a9b82624661244224ab43a1995962b796c1"
  
  livecheck do
    skip("skipping livecheck since it requires an account")
  end 

  url "https://builds.vital.audio/VitalAudio/vital/#{version.major}_#{version.minor}_#{version.patch}/VitalInstaller.pkg"
  name "Vital"
  desc "Spectral warping wavetable synth"
  homepage "https://vital.audio"

  uninstall pkgutil: "audio.vital.synth"
end
