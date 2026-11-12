class EsimtaoCli < Formula
  desc "Global travel eSIM data usage calculator & hardware matrix CLI"
  homepage "https://esimtao.com"
  url "https://github.com/AbigailDavised/esimtao-mcp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "bb7c8bc91659c9cc0139ce3d041aa5522436131d2f9545cd971636f6e843b8da"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/cli.js" => "esimtao-cli"
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/esimtao-cli", "--help"
  end
end
