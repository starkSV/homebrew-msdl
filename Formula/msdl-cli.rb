class MsdlCli < Formula
  desc "Download Windows ISO files directly from Microsoft's servers"
  homepage "https://msdl.tech-latest.com"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.6/msdl-darwin-arm64"
      sha256 "41641f8a25ef1843ea70aae4ec051e12390630a17c20e1648d1c013be43ab101"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.6/msdl-darwin-amd64"
      sha256 "5991a76b72d681d9624859a25295d11d91d0a8e205846be7f0bb33c872e502b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.6/msdl-linux-arm64"
      sha256 "350a80ff5f2857fc88c2ee6be78bb5218f3623dfdeaa51a2d875bb6277f3ddd7"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.6/msdl-linux-amd64"
      sha256 "b88d3ac5a1896ae107fc51603d6c9287c2eb79906511cd11758e65e1cb41d6a0"
    end
  end

  def install
    bin.install Dir["msdl-*"].first => "msdl"
  end

  test do
    system "#{bin}/msdl", "--help"
  end
end
