class Nuq < Formula
  desc "Multi-format frontend to jq"
  homepage "https://github.com/Nuckal777/nuq"
  url "https://github.com/Nuckal777/nuq/archive/refs/tags/v0.1.3.tar.gz"
  head "https://github.com/Nuckal777/nuq.git"
  version "0.1.3"
  sha256 "a84169d2113ad8b70b1979745c16cf8cd809d38ef85611d936d6fefa6c38336e"
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
