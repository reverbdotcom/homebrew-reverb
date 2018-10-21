class Protopkg < Formula
  @version = File.read(File.expand_path("../PROTOPKG-VERSION", __FILE__)).chomp

  desc "A protocol buffer package manager"
  homepage "https://github.com/ebenoist/protopkg"
  url "https://github.com/ebenoist/protopkg/releases/download/#{@version}/binaries.tar.gz"
  sha256 File.read(File.expand_path("../PROTOPKG-SHA", __FILE__)).chomp
  version @version

  def install
    bin.install "protopkg.darwin" => "protopkg"
  end

  test do
    system "protopkg -h"
  end
end
