class ProtocGenGo < Formula
  @version = "v1.2.0"

  desc "Vendored protoc-gen-go"
  homepage "https://github.com/golang/protobuf"
  url "https://raw.githubusercontent.com/reverbdotcom/homebrew-reverb/master/protoc-gen-go"
  sha256 "887490a3b8c1c28a807a48e3c2fbdd4389a497f0cee23de54030233e80c2aeff"
  version @version

  def install
    bin.install "protoc-gen-go" => "protoc-gen-go"
  end

  test do
    system "which protoc-gen-go"
  end
end
