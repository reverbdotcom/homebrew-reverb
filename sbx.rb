class Sbx < Formula
  @version = File.read(File.expand_path("../SBX_VERSION", __FILE__)).chomp

  desc "sbx: Orchestra CLI"
  homepage "https://github.com/reverbdotcom/sbx"
  version @version

  on_macos do
    url "https://github.com/reverbdotcom/sbx/releases/download/#{@version}/sbx-darwin-arm64.tar.gz"
    sha256 File.read(File.expand_path("../SBX_SHA", __FILE__)).chomp
  end

  def install
    bin.install "sbx"
  end

  test do
    system "sbx help"
  end
end
