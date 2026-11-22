class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.18/nitro-osx-arm64.zip"
      sha256 "b0a7161acd050a302386587eb9ab243bd93545b7f1bddd4d094480b8c061b02d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.18/nitro-osx-x64.zip"
      sha256 "cf01bd8a77e2304a0c8d0a85e65c7799b13b3adb5d028a14319d3bf7e3f69f2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.18/nitro-linux-arm64.tar.gz"
      sha256 "91e2a3b3fd63f47ab8eac5cacdfc80917e51557ee2f43537736f011fc500276c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.18/nitro-linux-x64.tar.gz"
      sha256 "59b1a83ed0b826948291b5466cc2445de27be512dd68f0a052574efef7c04caf"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
