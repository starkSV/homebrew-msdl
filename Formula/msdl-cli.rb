class MsdlCli < Formula
  desc "Download Windows ISO files directly from Microsoft's servers"
  homepage "https://msdl.tech-latest.com"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.7/msdl-darwin-arm64"
      sha256 "fac3daf124ff304ba4f6a9f14328fe5b94a5113b1d4897b427b3e88a3a132fd0"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.7/msdl-darwin-amd64"
      sha256 "92545f2a28866fb0b82e510f82cf4e039b975efcdd1e0e69ff30068aac9c8072"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.7/msdl-linux-arm64"
      sha256 "9059678043de3995f67ddc3083badf674b572d9bba8e8118e511f57d1f80d3eb"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.7/msdl-linux-amd64"
      sha256 "4714f47044814733ca2e20ae8f64327ad0b71b912d6fe6f677f18c90b3a5f1c0"
    end
  end

  def install
    bin.install Dir["msdl-*"].first => "msdl"
  end

  test do
    system "#{bin}/msdl", "--help"
  end
end
