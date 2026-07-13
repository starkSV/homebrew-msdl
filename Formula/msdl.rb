class Msdl < Formula
  desc "Download Windows ISO files directly from Microsoft's servers"
  homepage "https://msdl.tech-latest.com"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.5/msdl-darwin-arm64"
      sha256 "eb518dba274c8e7fe28e9cafe86512586f5dea35a1fa483117c0d3c7c643485c"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.5/msdl-darwin-amd64"
      sha256 "40de2a94ed521ab11592badd4ac480b49dc93c6122e0a398460c0ec1f7966404"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.5/msdl-linux-arm64"
      sha256 "933beb694b3e59fc84cdccfb5cb3dfe48db3274046df88390cf8ee32070f4088"
    else
      url "https://github.com/starkSV/windows-iso-downloader/releases/download/cli%2Fv0.3.5/msdl-linux-amd64"
      sha256 "dfb0648acd6caa79d597839bb9803c979446a2d77f90447273ee5003d8857c9d"
    end
  end

  def install
    bin.install Dir["msdl-*"].first => "msdl"
  end

  test do
    system "#{bin}/msdl", "--help"
  end
end
