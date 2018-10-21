class Protopkg < Formula
  @version = "v0.0.1"

  desc "A protocol buffer package manager"
  homepage "https://github.com/ebenoist/protopkg"
  url "https://github.com/ebenoist/protopkg/releases/download/#{@version}/binaries.tar.gz"
  sha256 "50b359619630bfbe1aca18e042cfe0db4af483fe96c029982925b8ea574d13d5"
  version @version

  def install
    bin.install "protopkg.darwin" => "protopkg"
  end

  test do
    system "protopkg -h"
  end
end
