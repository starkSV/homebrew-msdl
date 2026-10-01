class MsdlCli < Formula
  desc "Download Windows ISO files directly from Microsoft's servers"
  homepage "https://msdl.tech-latest.com"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.8/msdl-darwin-arm64"
      sha256 "be215a66632ffff8942e3f147961ea1e702f9d44f679d79cd081027740367a9d"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.8/msdl-darwin-amd64"
      sha256 "9ecd8a554678fa2501969416c820bb650417c4ced3831b4b008aedbdd1552a4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.8/msdl-linux-arm64"
      sha256 "34de371c70c7cb9bced7de6a0be4d229b3838de432b46ec36c1fc982cbe84109"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.8/msdl-linux-amd64"
      sha256 "b99ba65ec9d1d70b40437cc63f66e8a44c82152e2a47efec8d3bd9f0664db17e"
    end
  end

  def install
    bin.install Dir["msdl-*"].first => "msdl"
  end

  test do
    system "#{bin}/msdl", "--help"
  end
end
