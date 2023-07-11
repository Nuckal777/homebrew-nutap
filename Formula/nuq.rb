class Nuq < Formula
  desc "Multi-format frontend to jq"
  homepage "https://github.com/Nuckal777/nuq"
  url "https://github.com/Nuckal777/nuq/archive/refs/tags/v0.1.2.tar.gz"
  head "https://github.com/Nuckal777/nuq.git"
  version "0.1.2"
  sha256 "a34c7e8751ce9c108ee5a63d308287d379de4fe81329b614b16db25d4997c316"
  license "Unlicense"

  depends_on "rust" => :build
  depends_on "jq"

  def install
    ENV["JQ_LIB_DIR"] = "/opt/homebrew/lib"
    system("cargo", "build", "--release", "--locked")
    bin.install "target/release/nuq"
  end

  test do
    system "#{bin}/nuq", "--help"
  end
end
