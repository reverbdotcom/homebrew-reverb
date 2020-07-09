class Convox < Formula
  @version = "20180517121111"

  desc "reverb vendored convox"
  homepage "https://github.com/reverbdotcom/rack/tree/erik/reverb-fork"
  url "https://github.com/reverbdotcom/homebrew-reverb/releases/download/v2018-convox/convox-20180517121111.tar.gz"
  sha256 "e1c8b343a17d0c24946be8ae7f22df4386e2ef6ce9ab196eef095cf511048f60"
  version @version

  def install
    bin.install "convox.darwin" => "convox"
  end

  test do
    system "convox -h"
  end
end
