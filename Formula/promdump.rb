class Promdump < Formula
  desc "Dumps prometheus queries"
  homepage "https://github.com/sapcc/promdump"
  url "https://github.com/sapcc/promdump/archive/refs/tags/v0.2.0.tar.gz"
  head "https://github.com/sapcc/promdump.git"
  # also update version in install
  version "0.2.0"
  sha256 "042d245cacd40b33da9fa01cdd97f80dce13545b744c8ad5d78052271b2d6b1d"
  license "Apache-2.0"

  depends_on "go" => :build
  uses_from_macos "curl"
  depends_on "make" => :build

  def install
    system("make", "VERSION=v0.2.0")
    bin.install "promdump"
  end

  test do
    system "#{bin}/promdump", "version"
  end
end
