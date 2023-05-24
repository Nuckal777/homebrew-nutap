class Nuq < Formula
  desc "Multi-format frontend to jq"
  homepage "https://github.com/Nuckal777/nuq"
  url "https://github.com/Nuckal777/nuq/archive/refs/tags/v0.1.1.tar.gz"
  head "https://github.com/Nuckal777/nuq.git"
  version "0.1.1"
  sha256 "f8e6d68c1d2cb441c7f89d8b7e454c1437306fc129a439e82f1f0ab12898d02d"
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
